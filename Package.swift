// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "CopyOnWriteSupport",
    platforms: [
        .iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)
    ],
    products: [
        .library(
            name: "CopyOnWriteSupport",
            targets: ["CopyOnWriteSupport"]
        )
    ],
    targets: [
        .target(
            name: "CopyOnWriteSupport",
            path: "./CopyOnWriteSupport"
        )
    ],
    swiftLanguageVersions: [.v5]
)
