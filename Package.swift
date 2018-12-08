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
                sources: ["jsondump.c"],
                publicHeadersPath: "."),
        .target(name: "simple",
                path: "example",
                sources: ["simple.c"],
                publicHeadersPath: "."),
        .target(name: "CJSMN",
                path: ".",
                sources: ["jsmn.h", "SPMSupport.c"],
                publicHeadersPath: ".")
    ]
)
