"""Cyber workspace initialisation"""

# Import third party config rules.
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

# Sanitize a dependency so that it works correctly from code that includes
# Apollo as a submodule.
def clean_dep(dep):
    return str(Label(dep))

# Define external repositories required by Apollo-Cyber
def _cyber_repositories():
    tf_http_archive(
        name = "com_github_google_glog",
        sha256 = "8a83bf982f37bb70825df71a9709fa90ea9f4447fb3c099e1d720a439d88bad6",
        strip_prefix = "glog-0.6.0",
        urls = tf_mirror_urls("https://github.com/google/glog/archive/refs/tags/v0.6.0.tar.gz")
    )
    
    http_archive(
        name = "com_github_nlohmann_json",
        sha256 = "7d0edf65f2ac7390af5e5a0b323b31202a6c11d744a74b588dc30f5a8c9865ba",
        strip_prefix = "json-3.8.0",
        build_file = clean_dep("//third_party/nlohmann_json:json.BUILD"),
        urls = [
            "https://apollo-system.cdn.bcebos.com/archive/6.0/v3.8.0.tar.gz",
            "https://github.com/nlohmann/json/archive/v3.8.0.tar.gz",
        ],
    )

def workspace():
  _cyber_repositories()

cyber_workspace = workspace
