load("//python:compile.bzl", "python_proto_compile", "python_grpc_compile")
#load("@protobuf_py_deps//:requirements.bzl", protobuf_requirements = "all_requirements")
#load("@grpc_py_deps//:requirements.bzl", grpc_requirements = "all_requirements")

def python_grpc_library(**kwargs):
    name = kwargs.get("name")
    deps = kwargs.get("deps")
    verbose = kwargs.get("verbose")
    visibility = kwargs.get("visibility")

    name_pb = name + "_pb"
    python_grpc_compile(
        name = name_pb,
        deps = deps,
        visibility = visibility,
        transitive = True,
        verbose = verbose,
    )
    native.py_library(
        name = name,
        srcs = [name_pb],
        deps = protobuf_requirements + grpc_requirements,
        # This magically adds REPOSITORY_NAME/PACKAGE_NAME/{name_pb} to PYTHONPATH
        imports = [name_pb],
        visibility = visibility,
    )

# Alias
py_grpc_library = python_grpc_library
