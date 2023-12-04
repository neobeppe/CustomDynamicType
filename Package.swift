// swift-tools-version:5.3

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
    targets: [
        .target(
            name: "CustomDynamicType",
            path: "Sources"
        ),
        .testTarget(
            name: "CustomDynamicTypeTests",
            dependencies: ["CustomDynamicType"],
            path: "Tests"
        )
    ]
)