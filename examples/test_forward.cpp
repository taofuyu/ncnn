#include "net.h"
#include "platform.h"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <stdio.h>
#include <vector>
#include <iostream>
#if NCNN_VULKAN
#include "gpu.h"
#endif // NCNN_VULKAN

struct Object
{
    cv::Rect_<float> rect;
    int label;
    float prob;
};

template<class T>
const T& clamp(const T& v, const T& lo, const T& hi)
{
	assert(!(hi < lo));
	return v < lo ? lo : hi < v ? hi : v;
}


static int detect(const cv::Mat& bgr, std::vector<Object>& objects, const char* param_path, const char* bin_path)
{
    ncnn::Net detector;

    detector.load_param(param_path);
    detector.load_model(bin_path);

    const int target_w = 480;
    const int target_h = 270;

    int img_w = bgr.cols;
    int img_h = bgr.rows;

    //pre-process
    ncnn::Mat in = ncnn::Mat::from_pixels_resize(bgr.data, ncnn::Mat::PIXEL_BGR2GRAY, bgr.cols, bgr.rows, target_w, target_h);
    const float norm_vals[1] = { 1. / 255 };
    in.substract_mean_normalize(0, norm_vals);

    ncnn::Extractor ex = detector.create_extractor();
    ex.set_num_threads(1);

    ex.input("data", in);

    ncnn::Mat out;
    ex.extract("final_nms_box", out);

    objects.clear();
    for (int i = 0; i < out.h; i++)
    {
        const float* values = out.row(i);

        Object object;
        object.label = values[0];
        object.prob = values[1];

        // filter out cross-boundary
        float x1 = clamp(values[2] * target_w, 0.f, float(target_w - 1)) / target_w * bgr.cols;
        float y1 = clamp(values[3] * target_h, 0.f, float(target_h - 1)) / target_h * bgr.rows;
        float x2 = clamp(values[4] * target_w, 0.f, float(target_w - 1)) / target_w * bgr.cols;
        float y2 = clamp(values[5] * target_h, 0.f, float(target_h - 1)) / target_h * bgr.rows;

        object.rect.x = x1;
        object.rect.y = y1;
        object.rect.width = x2 - x1;
        object.rect.height = y2 - y1;

        objects.push_back(object);
    }

    return 0;
}

static void draw_objects(const cv::Mat& bgr, const std::vector<Object>& objects)
{
    static const char* class_names[] = {"background", "plate", "head"};

    cv::Mat image = bgr.clone();

    for (size_t i = 0; i < objects.size(); i++)
    {
        const Object& obj = objects[i];

        fprintf(stderr, "%d = %.5f at %.2f %.2f %.2f x %.2f\n", obj.label, obj.prob,
                obj.rect.x, obj.rect.y, obj.rect.width, obj.rect.height);

        cv::rectangle(image, obj.rect, cv::Scalar(255, 0, 0));

        char text[256];
        sprintf(text, "%s %.1f%%", class_names[obj.label], obj.prob * 100);

        int baseLine = 0;
        cv::Size label_size = cv::getTextSize(text, cv::FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);

        int x = obj.rect.x;
        int y = obj.rect.y - label_size.height - baseLine;
        if (y < 0)
            y = 0;
        if (x + label_size.width > image.cols)
            x = image.cols - label_size.width;

        cv::rectangle(image, cv::Rect(cv::Point(x, y), cv::Size(label_size.width, label_size.height + baseLine)),
                      cv::Scalar(255, 255, 255), -1);

        cv::putText(image, text, cv::Point(x, y + label_size.height),
                    cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0));
    }

    cv::imwrite("./result.jpg", image);
}

int main(int argc, char** argv)
{
    std::cout << "img path, param path, bin path ..." << std::endl;
    const char* imagepath = argv[1];
    const char* param_path = argv[2];
    const char* bin_path = argv[3];

    cv::Mat img = cv::imread(imagepath, 1);
    if (img.empty())
    {
        fprintf(stderr, "cv::imread %s failed\n", imagepath);
        return -1;
    }

    std::vector<Object> objects;
    detect(img, objects, param_path, bin_path);

    draw_objects(img, objects);

    return 0;
}
