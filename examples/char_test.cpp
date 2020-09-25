#include "net.h"
#include "platform.h"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <unistd.h>
#include <vector>
#include <iostream>
#include <string>
#include <map>
#if NCNN_VULKAN
#include "gpu.h"
#endif // NCNN_VULKAN

//usage:
//if dont want to save rcg wrong img:
// ./char_test /path/to/test/img/  none  /path/to/xx.param   /path/to/xx.bin
//if want to save rcg wrong img:
// ./char_test /path/to/test/img/  /path/to/save/  /path/to/xx.param   /path/to/xx.bin


struct RcgResult
{
    float score;
    int flag;//class index
};

void split(const std::string &s, std::vector<std::string>& tokens, const std::string& delimiters = " ")
{
	std::string::size_type lastPos = s.find_first_not_of(delimiters, 0);
	std::string::size_type pos = s.find_first_of(delimiters, lastPos);
	while (std::string::npos != pos || std::string::npos != lastPos)
	{
		tokens.push_back(s.substr(lastPos, pos - lastPos));
		lastPos = s.find_first_not_of(delimiters, pos);
		pos = s.find_first_of(delimiters, lastPos);
	}
}

int readFileList(char *basePath, std::vector<std::string>& file_names)
{
    DIR *dir;
    struct dirent *ptr;
    char base[1000];

    if ((dir=opendir(basePath)) == NULL)
    {
        perror("Open dir error...");
        exit(1);
    }
    
    while ((ptr=readdir(dir)) != NULL)
    {
        if(strcmp(ptr->d_name,".")==0 || strcmp(ptr->d_name,"..")==0)    ///current dir OR parrent dir
            continue;
        else if(ptr->d_type == 8)    ///file
        {
            std::string f = ptr->d_name;
            std::string d = basePath;
            file_names.push_back(d+"/"+f);
        }
        else if(ptr->d_type == 10)    ///link file
        {
            //printf("%s/%s\n", basePath, ptr->d_name);
            std::string f = ptr->d_name;
            std::string d = basePath;
            file_names.push_back(d+"/"+f);
        }
        else if(ptr->d_type == 4)    ///dir
        {
            memset(base,'\0',sizeof(base));
            strcpy(base,basePath);
            strcat(base,"/");
            strcat(base,ptr->d_name);
            readFileList(base,file_names);
        }
    }
    closedir(dir);

    return 0;
}

static int recognize(const cv::Mat& bgr, ncnn::Net &RCG, RcgResult &result)
{
    const int target_w = 28;
    const int target_h = 28;

    int img_w = bgr.cols;
    int img_h = bgr.rows;

    //pre-process
    ncnn::Mat in = ncnn::Mat::from_pixels_resize(bgr.data, ncnn::Mat::PIXEL_BGR2GRAY, bgr.cols, bgr.rows, target_w, target_h);
    const float norm_vals[1] = { 1. / 255 };
    in.substract_mean_normalize(0, norm_vals);

    ncnn::Extractor ex = RCG.create_extractor();
    ex.set_num_threads(1);

    ex.input("data", in);

    ncnn::Mat out;
    ex.extract("prob", out);

    //decode model output
	ncnn::Mat out_flatterned = out.reshape(out.w * out.h * out.c);
	std::vector<float> scores;
	scores.resize(out_flatterned.w);
	for (int i=0; i<out_flatterned.w; i++)
	{
		scores[i] = out_flatterned[i];
	}
	
	//get predicted class
    float max_score = 0.0;
    int max_flag = 0;
    for (int i=0; i<scores.size(); i++)
    {
        if (scores[i]>max_score)
        {
            max_score = scores[i];
            max_flag = i;
        }
    }

    result.score = max_score;
    result.flag = max_flag;

    return 0;
}

int includeChinese(std::string st)
{
    char *str = const_cast<char*>(st.c_str());
    char c;
    while(1)
    {
        c=*str++;
        if (c==0) break;//如果到字符串尾则说明该字符串没有中文字符
        if (c&0x80)//如果字符高位为1且下一字符高位也是1则有中文字符
        {
            if (*str & 0x80) return 1;
        }
    }
    return 0;
}

int CopyFile(char* sourcefile, char* destfile)
{
    std::string command = "cp ";
    command  += sourcefile;
    command  += " ";
    command  += destfile;//cp /home/file1 /root/file2
    system((char*)command.c_str());
    return 0;
}


int main(int argc, char** argv)
{
    char* imagepath = argv[1];
    char* save_wrong_path = argv[2];//give "none" if no need to save img
    const char* param_path = argv[3];
    const char* bin_path = argv[4];

    std::string img_father_path = imagepath;
    std::string save_path = save_wrong_path;
    std::vector<std::string> child_path;
    
    //class map
    std::string str[] = {"京","津","冀","晋","蒙","辽","吉","黑","沪","苏","浙","皖","闽","赣","鲁","豫","鄂","湘","粤","桂","琼","渝","川","贵","云","藏","陕","甘","青","宁","新"};
    std::vector<std::string> names(str, str+31);
    
    //read all children folders
    int class_idx = -1;
    std::vector<std::string> filenames;
    readFileList(imagepath, filenames);

    int right_cnt = 0;//该次测试的识别模型结果
    int right_gt_cnt = 0;//gt
    int raw_right_cnt =0;//rm原代码识别结果
    
    //init ncnn net
    ncnn::Net RCG;

    RCG.load_param(param_path);
    RCG.load_model(bin_path);

    for (int i=0; i<filenames.size(); i++)
    {
        //get img name
        std::vector<std::string> splitted;
    	split(filenames[i], splitted, "/");
        std::string img_name = splitted[splitted.size()-1];

        //get gt
        std::string gt_province = "";
        splitted.clear();
        split(img_name, splitted, "_");
        
        //get raw code rcg result
        std::string raw_rm_result = splitted[1];

        for (int j=2; j<splitted.size(); j++)
        {
            if ( includeChinese(splitted[j]) )//如果包含中文字符
            {
                gt_province = splitted[j];
                right_gt_cnt++;
                break;
            }
        }

        //load img
        cv::Mat img = cv::imread(filenames[i].c_str(), 1);
        if (img.empty())
        {
            fprintf(stderr, "cv::imread %s failed\n", imagepath);
            continue;
        }

        //forward
        RcgResult result;
        recognize(img, RCG, result);
        std::string province_result = names[result.flag];

        if ((gt_province != "") && (gt_province.find(province_result) != gt_province.npos))//如果gt车牌不为空，且其中包含识别结果，则识别对
        {
            right_cnt++;
        }
        if ((save_path != "none") && (gt_province != "") && (gt_province.find(province_result) == gt_province.npos))//如果gt车牌不为空，识别错了
        {
            CopyFile((char*)filenames[i].c_str(), (char*)save_path.c_str());
        }
        if ((gt_province != "") && (gt_province.find(raw_rm_result) != gt_province.npos))//如果gt车牌不为空，原rm识别对了
        {
            raw_right_cnt++;
        }
    }
    
    std::cout << "ncnn rcg right: " << right_cnt << std::endl;
    std::cout << "raw rm rcg right: " << raw_right_cnt << std::endl;
    std::cout << "total plates: " << right_gt_cnt << std::endl;
    std::cout << "ncnn acc: " << float(right_cnt)/float(right_gt_cnt) << std::endl;
    std::cout << "raw acc: " << float(raw_right_cnt)/float(right_gt_cnt) << std::endl;
    
    return 0;
}