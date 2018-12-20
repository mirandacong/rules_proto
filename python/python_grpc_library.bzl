load("//python:python_grpc_compile.bzl", "python_grpc_compile")

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
        deps = [
            '@com_github_grpc_grpc//src/python/grpcio/grpc:grpcio',
            '@com_google_protobuf//:protobuf_python',
        ],
        imports = [name_pb],
        visibility = visibility,
    )

# Alias
py_grpc_library = python_grpc_library
