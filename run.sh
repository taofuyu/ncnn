#!/bin/bash
#usage: ..../ncnn_files/versionID/versionID_ncnn.prototxt and ..../ncnn_files/versionID/versionID_ncnn.caffemodel, these two files must exist. 

name="D1V2/D1V2"

echo "first step. convert caffe files to ncnn files.  caffe2ncnn ..."

cd /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/build_pc/tools/caffe/ 
./caffe2ncnn /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_ncnn.prototxt /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_ncnn.caffemodel /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.param /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.bin

echo "second step. get quant table.  ncnn2table ..."

cd /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/build_pc/tools/quantize/ 
./ncnn2table --param=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.param --bin=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.bin --images=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/map_server/mapserver23_taofuyu/tao_dataset/det_plate/aodi_new4000/ --output=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_int8.table --mean=0,0,0 --norm=0.00392156862745098,0.00392156862745098,0.00392156862745098 --size=448,256 --thread=2 --swapGray=true

echo "third step. quant.  ncnn2int8 ..."

./ncnn2int8 /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.param /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}.bin /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_int8.param /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_int8.bin /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn_files/${name}_int8.table

