"""Loads the Flatbuffers library, used by TF Lite."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "flatbuffers",
        strip_prefix = "flatbuffers-24.3.7",
        sha256 = "BFFF9D2150FCFF88F844E8C608B02B2A0E94C92AEA39B04C0624783464304784",
        urls = [
            "https://github.com/google/flatbuffers/archive/v24.3.7.tar.gz",
            "https://github.com/google/flatbuffers/archive/v24.3.7.tar.gz",
        ],
        build_file = "//third_party/flatbuffers:BUILD.bazel",
        delete = ["build_defs.bzl", "BUILD.bazel"],
        link_files = {
            "//third_party/flatbuffers:build_defs.bzl": "build_defs.bzl",
        },
    )
