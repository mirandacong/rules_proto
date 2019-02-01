"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

package(default_visibility = ["//visibility:public"])

licenses([
    "notice",  # "MIT,Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_binary",
    "rust_library",
    "rust_test",
)

# Unsupported target "echo" with type "test" omitted

rust_library(
    name = "mio_uds",
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
        "@raze__iovec__0_1_2//:iovec",
        "@raze__libc__0_2_43//:libc",
        "@raze__mio__0_6_16//:mio",
    ],
)

# Unsupported target "smoke" with type "test" omitted
