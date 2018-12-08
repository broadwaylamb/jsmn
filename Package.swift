// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "jsmn",
    products: [
        .library(name: "CJSMN", targets: ["CJSMN"]),
        .executable(name: "jsondump", targets: ["jsondump"]),
        .executable(name: "simple", targets: ["simple"])
    ],
    targets: [
        .target(name: "jsondump",
                path: "example",
                exclude: ["test"],
                sources: ["jsondump.c"],
                publicHeadersPath: "."),
        .target(name: "simple",
                path: "example",
                exclude: ["test"],
                sources: ["simple.c"],
                publicHeadersPath: "."),
        .target(name: "CJSMN",
                path: ".",
                exclude: ["test"],
                sources: ["jsmn.h", "SPMSupport.c"],
                publicHeadersPath: ".")
    ]
)
