# Description:
#   OpenCV libraries for video/image processing on Windows

licenses(["notice"])  # BSD license

exports_files(["LICENSE"])

OPENCV_VERSION = "490"

config_setting(
    name = "opt_build",
    values = {"compilation_mode": "opt"},
)

config_setting(
    name = "dbg_build",
    values = {"compilation_mode": "dbg"},
)

# Note: this determines the order in which the libraries are passed to the
# linker, so if library A depends on library B, library B must come _after_.
# Hence core is at the bottom.
OPENCV_MODULES = [
    "calib3d",
    "features2d",
    "highgui",
    "video",
    "videoio",
    "imgcodecs",
    "imgproc",
    "core",
]

# The following build rule assumes that the executable "opencv-3.4.10-vc14_vc15.exe"
# is downloaded and the files are extracted to local.
# If you install OpenCV separately, please modify the build rule accordingly.
cc_library(
    name = "opencv",
    srcs = select({
        ":opt_build": 
            [ "x64/vc17/lib/opencv_%s%s.lib" % (module, OPENCV_VERSION) for module in OPENCV_MODULES ] +
            [ "x64/vc17/lib/opencv_%s%s.dll" % (module, OPENCV_VERSION) for module in OPENCV_MODULES ], 
        ":dbg_build": 
            [ "x64/vc17/lib/opencv_%s%sd.lib" % (module, OPENCV_VERSION) for module in OPENCV_MODULES ] +
            [ "x64/vc17/lib/opencv_%s%sd.dll" % (module, OPENCV_VERSION) for module in OPENCV_MODULES ], 
    }),
    hdrs = glob(["include/opencv2/**/*.h*"]),
    includes = ["include/"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
