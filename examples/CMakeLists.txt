cmake_minimum_required(VERSION 3.17)
project(examples)

set(CMAKE_CXX_STANDARD 14)

add_executable(examples
        char_test.cpp
        fasterrcnn.cpp
        mobilenetssd.cpp
        mobilenetv2ssdlite.cpp
        mobilenetv3ssdlite.cpp
        peleenetssd_seg.cpp
        retinaface.cpp
        rfcn.cpp
        shufflenetv2.cpp
        simplepose.cpp
        squeezenet.cpp
        squeezenet_c_api.cpp
        squeezenetssd.cpp
        test_forward.cpp
        yolact.cpp
        yolov2.cpp
        yolov3.cpp
        yolov4.cpp)
