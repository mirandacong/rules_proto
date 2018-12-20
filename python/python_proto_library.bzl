load("//python:python_proto_compile.bzl", "python_proto_compile")

def python_proto_library(**kwargs):
    name = kwargs.get("name")
    deps = kwargs.get("deps")
    verbose = kwargs.get("verbose")
    visibility = kwargs.get("visibility")

    name_pb = name + "_pb"
    python_proto_compile(
        name = name_pb,
        deps = deps,
        visibility = visibility,
        transitive = True,
        verbose = verbose,
    )

    native.py_library(
        name = name,
        srcs = [name_pb],
        deps = ['@com_google_protobuf//:protobuf_python'],
        imports = [name_pb],
        visibility = visibility,
    )

# Alias
py_proto_library = python_proto_library
