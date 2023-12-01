// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomDynamicType",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CustomDynamicType",
            targets: ["CustomDynamicType"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CustomDynamicType",
            path: "Sources")
    ]
)
