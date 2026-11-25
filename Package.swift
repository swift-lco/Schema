// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "Schema",
    // platforms: [
    //     .macOS(.v13),
    // ],
    products: [
        .library(
            name: "Schema",
            targets: [
                "Schema",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-lco/Primitives.git",
            branch: "master"
        ),
    ],
    targets: [
        .target(
            name: "Schema",
            dependencies: [
                .product(
                    name: "Primitives",
                    package: "Primitives"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
