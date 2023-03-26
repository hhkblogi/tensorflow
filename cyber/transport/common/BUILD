load(
    "//tensorflow/core/platform:rules_cc.bzl",
    "cc_binary",
    "cc_library",
    "cc_shared_library",
    "cc_test",)
# load("@rules_cc//cc:defs.bzl", "cc_library", "cc_test")
# load("//tools:cpplint.bzl", "cpplint")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "cyber_transport_common_hdrs",
    srcs = glob([
        "*.h",
    ]),
)

cc_library(
    name = "endpoint",
    srcs = ["endpoint.cc"],
    hdrs = ["endpoint.h"],
    deps = [
        ":identity",
        "//cyber/common:global_data",
        "//cyber/proto:role_attributes_cc_proto",
    ],
)

cc_test(
    name = "endpoint_test",
    size = "small",
    srcs = ["endpoint_test.cc"],
    deps = [
        "//cyber:cyber_core",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_library(
    name = "identity",
    srcs = ["identity.cc"],
    hdrs = ["identity.h"],
    deps = [
        "//cyber/common:util",
        # "@uuid",
    ],
    copts = select({
        "//tensorflow/tsl:macos_arm64": [
            "-luuid",
        ],
        "//tensorflow/tsl:linux_aarch64": [],
    }),
    linkopts = select({
        "//tensorflow/tsl:macos_arm64": [],
        "//tensorflow/tsl:linux_aarch64": ["-luuid",]
    })
)

cc_test(
    name = "identity_test",
    size = "small",
    srcs = ["identity_test.cc"],
    deps = [
        # "//cyber:cyber_core",
        ":identity",
        "@com_google_googletest//:gtest_main",
    ],
)

# cpplint()
