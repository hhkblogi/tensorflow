load(
    "//tensorflow/core/platform:rules_cc.bzl",
    "cc_binary",
    "cc_library",
    "cc_shared_library",
    "cc_test",)

cc_binary(
  name = "hello_world_example",
  srcs = [
    "HelloWorld_main.cpp",
    "HelloWorld.h",
    "HelloWorld.cxx",
    "HelloWorldPublisher.h",
    "HelloWorldPublisher.cpp",
    "HelloWorldSubscriber.h",
    "HelloWorldSubscriber.cpp",
    "HelloWorldPubSubTypes.h",
    "HelloWorldPubSubTypes.cxx",
    "optionparser.hpp",
  ],
#  copts = ["-std=c++11"],
  deps = [
    "@fastrtps",
  #  "@fastcdr",
  ],
)