# Description:
#   OpenCV libraries for video/image processing on Linux

load("@bazel_skylib//lib:paths.bzl", "paths")

licenses(["notice"])  # BSD license

exports_files(["LICENSE"])

# The path to OpenCV is a combination of the path set for "macos_opencv"
# in the WORKSPACE file and the prefix here.
PREFIX = "" #"opt/opencv@3"
VERSION = "409"

cc_library(
    name = "opencv",
    srcs = glob(
        [
            paths.join(PREFIX, "lib/libopencv_core.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_calib3d.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_features2d.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_highgui.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_imgcodecs.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_imgproc.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_video.so.%s" % VERSION),
            paths.join(PREFIX, "lib/libopencv_videoio.so.%s" % VERSION),
        ],
    ),
    hdrs = glob([paths.join(PREFIX, "include/opencv2/**/*.h*")]),
    includes = [paths.join(PREFIX, "include/")],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)