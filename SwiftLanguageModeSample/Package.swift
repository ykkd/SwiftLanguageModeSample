// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLanguageModeSample",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SwiftLanguageModeSample",
            targets: ["Swift5", "Swift6"]
        ),
    ],
    targets: [
        .target(
            name: "Swift5",
            path: "./Sources/SwiftLanguageModeSample/Swift5",
            swiftSettings: [
                .swiftLanguageMode(.v5),
                .enableUpcomingFeature("StrictConcurrency"),
            ]
        ),
        .target(
            name: "Swift6",
            path: "./Sources/SwiftLanguageModeSample/Swift6",
            swiftSettings: [
                .swiftLanguageMode(.v6),
            ]
        ),
        .testTarget(
            name: "SwiftLanguageModeSampleTests",
            dependencies: ["Swift5", "Swift6"]
        ),
    ]
)
