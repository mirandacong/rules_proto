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

# Unsupported target "client" with type "example" omitted
# Unsupported target "client" with type "test" omitted
# Unsupported target "client_server" with type "bench" omitted

rust_library(
    name = "httpbis",
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
        "@raze__futures_cpupool__0_1_8//:futures_cpupool",
        "@raze__log__0_4_5//:log",
        "@raze__net2__0_2_33//:net2",
        "@raze__tls_api__0_1_20//:tls_api",
        "@raze__tls_api_stub__0_1_20//:tls_api_stub",
        "@raze__tokio_core__0_1_17//:tokio_core",
        "@raze__tokio_io__0_1_8//:tokio_io",
        "@raze__tokio_timer__0_1_2//:tokio_timer",
        "@raze__tokio_tls_api__0_1_20//:tokio_tls_api",
        "@raze__tokio_uds__0_1_7//:tokio_uds",
        "@raze__unix_socket__0_5_0//:unix_socket",
        "@raze__void__1_0_2//:void",
    ],
)

# Unsupported target "server" with type "example" omitted
# Unsupported target "server" with type "test" omitted
# Unsupported target "smoke" with type "test" omitted
# Unsupported target "stress_test" with type "example" omitted
# Unsupported target "tls" with type "test" omitted
