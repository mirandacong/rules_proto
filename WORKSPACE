workspace(name = "build_stack_rules_proto")

# =========================================

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# =========================================

PROTOBUF_VERSION = "b829ff2a4614ff25048944b2cdc8e43b6488fda0"

http_archive(
    name = "com_google_protobuf",
    url = "https://github.com/google/protobuf/archive/%s.tar.gz" % PROTOBUF_VERSION,
    sha256 = "5d82a718e271e7fda626f983628e4b4601221788c2244763a9e57eda4cc667dd",
    strip_prefix = "protobuf-" + PROTOBUF_VERSION,
)


# =========================================
load("//:deps.bzl", "com_github_grpc_grpc")

com_github_grpc_grpc()

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", com_github_grpc_grpc_bazel_grpc_deps = "grpc_deps")

com_github_grpc_grpc_bazel_grpc_deps()

# =========================================
load("//:deps.bzl", "io_grpc_grpc_java")

io_grpc_grpc_java()

load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")
grpc_java_repositories(
    omit_com_google_protobuf = True,
)

# =========================================

load("//csharp:deps.bzl", "csharp_grpc_library")

csharp_grpc_library()

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "dotnet_register_toolchains", "dotnet_repositories")

dotnet_register_toolchains("host")
#dotnet_register_toolchains(dotnet_version="4.2.3")

dotnet_repositories()


load("//csharp/nuget:packages.bzl", nuget_packages = "packages")
nuget_packages()

load("//csharp/nuget:nuget.bzl", "nuget_protobuf_packages")
load("//csharp/nuget:nuget.bzl", "nuget_grpc_packages")

nuget_protobuf_packages()
nuget_grpc_packages()

# =========================================

load("//python:deps.bzl", "python_grpc_library")

python_grpc_library()

load("@io_bazel_rules_python//python:pip.bzl", "pip_repositories", "pip_import")

pip_repositories()

pip_import(
	name = "protobuf_py_deps",
	requirements = "@build_stack_rules_proto//python/requirements:protobuf.txt",
)

load("@protobuf_py_deps//:requirements.bzl", protobuf_pip_install = "pip_install")

protobuf_pip_install()

pip_import(
   name = "grpc_py_deps",
   requirements = "@build_stack_rules_proto//python:requirements.txt",
)

load("@grpc_py_deps//:requirements.bzl", grpc_pip_install = "pip_install")

grpc_pip_install()

# =========================================

load("//java:deps.bzl", "java_grpc_library")

java_grpc_library()

# =========================================

load("//scala:deps.bzl", "scala_grpc_library")

scala_grpc_library()

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")

scala_register_toolchains()

load("@io_bazel_rules_scala//scala_proto:scala_proto.bzl", "scala_proto_repositories")

scala_proto_repositories()

# ===========

load("//closure:deps.bzl", "closure_proto_library")

closure_proto_library()

load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")

closure_repositories(
    omit_com_google_protobuf = True,
)

# =========================================

load("//node:deps.bzl", "node_grpc_library")

node_grpc_library()

load("@org_pubref_rules_node//node:rules.bzl", "node_repositories", "yarn_modules")

node_repositories()

yarn_modules(
    name = "proto_node_modules",
    deps = {
        "google-protobuf": "3.6.1",
    },
)

yarn_modules(
    name = "grpc_node_modules",
    deps = {
        "google-protobuf": "3.6.1",
        "grpc": "1.15.1",
        "async": "2.6.1",
    },
)

# =========================================

load("//go:deps.bzl", "go_grpc_library")

go_grpc_library()

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()

# =========================================

load("//dart:deps.bzl", "dart_grpc_library")

dart_grpc_library()

load("@io_bazel_rules_dart//dart/build_rules:repositories.bzl", "dart_repositories")

dart_repositories()

load("@dart_pub_deps_protoc_plugin//:deps.bzl", dart_protoc_plugin_deps = "pub_deps")
dart_protoc_plugin_deps()

load("@dart_pub_deps_grpc//:deps.bzl", dart_grpc_deps = "pub_deps")
dart_grpc_deps()

# =========================================

load("//github.com/stackb/grpc.js:deps.bzl", "closure_grpc_library")

closure_grpc_library()

# =========================================

load("//github.com/grpc/grpc-web:deps.bzl", "closure_grpc_library")

closure_grpc_library()

# =========================================

load("//github.com/improbable-eng/ts-protoc-gen:deps.bzl", "ts_grpc_library")

ts_grpc_library()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")

node_repositories(
    package_json = ["@ts_protoc_gen//:package.json"],
)

load("@build_bazel_rules_typescript//:defs.bzl", "ts_setup_workspace")

ts_setup_workspace()

load("@io_bazel_rules_webtesting//web:repositories.bzl", "browser_repositories", "web_test_repositories")

web_test_repositories()

load("@build_bazel_rules_nodejs//:defs.bzl", "npm_install")

npm_install(
    name = "deps",
    package_json = "@ts_protoc_gen//:package.json",
    package_lock_json = "@ts_protoc_gen//:package-lock.json",
)

# =========================================

load("//github.com/gogo/protobuf:deps.bzl", "gogo_grpc_library")

gogo_grpc_library()

# =========================================

##
## Must have swiftc on your system.  To install on ubuntu 17.10, here's what I did:
##
## $ sudo apt install ubuntu-make; umake swift
## $ vi `/.bashrc` and update PATH to include ~/.local/share/umake/swift/swift-lang/usr/bin
##

load("//swift:deps.bzl", "swift_grpc_library")

swift_grpc_library()

load("//swift:repositories.bzl", "swift_toolchain")
# Default values work with linux, x86_64, /usr/local/bin/clang.
swift_toolchain(
	root = "/home/pcj/.local/share/umake/swift/swift-lang/usr",
)

# load(
#     "@build_bazel_rules_swift//swift:repositories.bzl",
#     "swift_rules_dependencies",
# )

# swift_rules_dependencies()

# =======================================

load("//ruby:deps.bzl", "ruby_grpc_library")

ruby_grpc_library()

load("@com_github_yugui_rules_ruby//ruby:def.bzl", "ruby_register_toolchains")

ruby_register_toolchains()

load("@com_github_yugui_rules_ruby//ruby/private:bundle.bzl", "bundle_install")

bundle_install(
    name = "routeguide_gems_bundle",
    gemfile = "//ruby:Gemfile",
    gemfile_lock = "//ruby:Gemfile.lock",
)

# =======================================

load("//rust:deps.bzl", "rust_grpc_library")

rust_grpc_library()

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories()

load("//rust/cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

# ========================================

load("//android:deps.bzl", "android_grpc_library")

android_grpc_library()

load("@build_bazel_rules_android//android:sdk_repository.bzl", "android_sdk_repository")

#
# This version of android_sdk_repository uses the ANDROID_HOME env var.
#
# Why is this not a workspace rule?  This is so painful.
# $ curl -O -J -L https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
# $ mkdir ~/android-sdk
# $ unzip in that dir
# $ tools/bin/sdkmanager --list
# $ tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3"
# $ export ANDROID_HOME="/home/pcj/android-sdk/"
#
android_sdk_repository(
    name = "androidsdk"
)

load("@gmaven_rules//:gmaven.bzl", "gmaven_rules")

gmaven_rules()

# =======================================

load("//github.com/grpc-ecosystem/grpc-gateway:deps.bzl", "gateway_grpc_library")

gateway_grpc_library()

load("@grpc_ecosystem_grpc_gateway//:repositories.bzl", grpc_gateway_repositories = "repositories")

grpc_gateway_repositories()

load("//tools/exgen:deps.bzl", "exgen_deps")
exgen_deps()
