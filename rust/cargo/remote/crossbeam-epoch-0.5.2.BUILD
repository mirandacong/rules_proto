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

rust_library(
    name = "crossbeam_epoch",
    srcs = glob(["**/*.rs"]),
    crate_features = [
        "crossbeam-utils",
        "default",
        "lazy_static",
        "use_std",
    ],
    crate_root = "src/lib.rs",
    crate_type = "lib",
    rustc_flags = [
        "--cap-lints allow",
        "--target=x86_64-unknown-linux-gnu",
    ],
    deps = [
        "@raze__arrayvec__0_4_7//:arrayvec",
        "@raze__cfg_if__0_1_5//:cfg_if",
        "@raze__crossbeam_utils__0_5_0//:crossbeam_utils",
        "@raze__lazy_static__1_1_0//:lazy_static",
        "@raze__memoffset__0_2_1//:memoffset",
        "@raze__scopeguard__0_3_3//:scopeguard",
    ],
)

# Unsupported target "defer" with type "bench" omitted
# Unsupported target "flush" with type "bench" omitted
# Unsupported target "pin" with type "bench" omitted
# Unsupported target "sanitize" with type "example" omitted
