load(
    "//tensorflow/core/platform:rules_cc.bzl",
    "cc_binary",
    "cc_library",
    "cc_shared_library",
    "cc_test",)

cc_binary(
  name = "rtps_test",
  srcs = [
    "main_RTPSTest.cpp",
    "TestReaderSocket.cpp",
    "TestReaderSocket.h",
    "TestWriterSocket.cpp",
    "TestWriterSocket.h",
  ],
  deps = [
    "@fastrtps",
  ],
)