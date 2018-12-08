// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "jsmn",
    products: [
        .library(name: "CJSMN", targets: ["CJSMN"]),
    ],
    targets: [
        .target(name: "CJSMN", path: "CJSMN")
    ]
)
