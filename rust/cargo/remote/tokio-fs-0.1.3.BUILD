"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

package(default_visibility = ["//visibility:public"])

licenses([
    "notice",  # "MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_binary",
    "rust_library",
    "rust_test",
)

# Unsupported target "file" with type "test" omitted
# Unsupported target "std-echo" with type "example" omitted

rust_library(
    name = "tokio_fs",
    srcs = glob(["**/*.rs"]),
    crate_features = [
    ],
    crate_root = "src/lib.rs",
    crate_type = "lib",
    rustc_flags = [
        "--cap-lints allow",
        "--target=x86_64-unknown-linux-gnu",
    ],
    deps = [
        "@raze__futures__0_1_24//:futures",
        "@raze__tokio_io__0_1_8//:tokio_io",
        "@raze__tokio_threadpool__0_1_6//:tokio_threadpool",
    ],
)
