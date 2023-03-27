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
    "TestReaderPersistent.cpp",
    "TestReaderPersistent.h",
    "TestWriterPersistent.cpp",
    "TestWriterPersistent.h",
  ],
  deps = [
    "@fastrtps",
  ],
)