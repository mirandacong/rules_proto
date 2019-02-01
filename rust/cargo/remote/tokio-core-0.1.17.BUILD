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

# Unsupported target "buffered" with type "test" omitted
# Unsupported target "chain" with type "test" omitted
# Unsupported target "chat" with type "example" omitted
# Unsupported target "compress" with type "example" omitted
# Unsupported target "connect" with type "example" omitted
# Unsupported target "echo" with type "example" omitted
# Unsupported target "echo" with type "test" omitted
# Unsupported target "echo-threads" with type "example" omitted
# Unsupported target "echo-udp" with type "example" omitted
# Unsupported target "hello" with type "example" omitted
# Unsupported target "interval" with type "test" omitted
# Unsupported target "latency" with type "bench" omitted
# Unsupported target "limit" with type "test" omitted
# Unsupported target "line-frames" with type "test" omitted
# Unsupported target "mio-ops" with type "bench" omitted
# Unsupported target "pipe-hup" with type "test" omitted
# Unsupported target "proxy" with type "example" omitted
# Unsupported target "sink" with type "example" omitted
# Unsupported target "spawn" with type "test" omitted
# Unsupported target "stream-buffered" with type "test" omitted
# Unsupported target "tcp" with type "bench" omitted
# Unsupported target "tcp" with type "test" omitted
# Unsupported target "timeout" with type "test" omitted
# Unsupported target "tinydb" with type "example" omitted
# Unsupported target "tinyhttp" with type "example" omitted

rust_library(
    name = "tokio_core",
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
        "@raze__bytes__0_4_10//:bytes",
        "@raze__futures__0_1_24//:futures",
        "@raze__iovec__0_1_2//:iovec",
        "@raze__log__0_4_5//:log",
        "@raze__mio__0_6_16//:mio",
        "@raze__scoped_tls__0_1_2//:scoped_tls",
        "@raze__tokio__0_1_8//:tokio",
        "@raze__tokio_executor__0_1_4//:tokio_executor",
        "@raze__tokio_io__0_1_8//:tokio_io",
        "@raze__tokio_reactor__0_1_5//:tokio_reactor",
        "@raze__tokio_timer__0_2_6//:tokio_timer",
    ],
)

# Unsupported target "udp" with type "test" omitted
# Unsupported target "udp-codec" with type "example" omitted
