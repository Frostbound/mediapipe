# Description:
#   OpenCV libraries for video/image processing on MacOS

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
            paths.join(PREFIX, "lib/libopencv_core.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_calib3d.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_features2d.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_highgui.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_imgcodecs.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_imgproc.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_video.%s.dylib" % VERSION),
            paths.join(PREFIX, "lib/libopencv_videoio.%s.dylib" % VERSION),
        ],
    ),
    hdrs = glob([paths.join(PREFIX, "include/opencv2/**/*.h*")]),
    includes = [paths.join(PREFIX, "include/")],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)