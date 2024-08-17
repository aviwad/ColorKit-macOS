// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorKit",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]),
    ],
    targets: [
        .target(
            name: "ColorKit",
            path: "ColorKit/ColorKit")
    ]
)