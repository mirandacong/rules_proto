"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

package(default_visibility = ["//visibility:public"])

licenses([
    "notice",  # "Apache-2.0,MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_binary",
    "rust_library",
    "rust_test",
)

rust_library(
    name = "lock_api",
    srcs = glob(["**/*.rs"]),
    crate_features = [
        "owning_ref",
    ],
    crate_root = "src/lib.rs",
    crate_type = "lib",
    rustc_flags = [
        "--cap-lints allow",
        "--target=x86_64-unknown-linux-gnu",
    ],
    deps = [
        "@raze__owning_ref__0_3_3//:owning_ref",
        "@raze__scopeguard__0_3_3//:scopeguard",
    ],
)
