// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalPackages",
    defaultLocalization: "en",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "BasePackage", targets: ["BasePackage"]),
        .library(name: "FunctionA", targets: ["FunctionA"]),
        .library(name: "FunctionB", targets: ["FunctionB"]),
        .library(name: "FunctionC", targets: ["FunctionC"]),
        .library(name: "CommonPackage", targets: ["CommonPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/u5-03/SwiftExtensions", from: "1.0.0"),
        // Ref: https://twitter.com/mui_z_/status/1593859390448103424?s=20&t=qFNInw6MuCx0lDEYX_VD1A
//        .package(url: "https://github.com/realm/SwiftLint", from: "0.50.1"),
        // https://github.com/realm/SwiftLint/issues/4542
//        .package(
//            url: "https://github.com/realm/SwiftLint",
//            revision: "0e6d19b4c1906e6fbf396172e9a0a22acdf6f86c"
//        ),
        .package(url: "https://github.com/realm/SwiftLint", branch: "main"),
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.0")
    ],
    targets: [
        // Use
        .binaryTarget(
            name: "SwiftLintBinary",
            url: "https://github.com/realm/SwiftLint/releases/download/0.50.1/SwiftLintBinary-macos.artifactbundle.zip",
            checksum: "487c57b5a39b80d64a20a2d052312c3f5ff1a4ea28e3cf5556e43c5b9a184c0c"
        ),
        .plugin(
            name: "SwiftLint",
            capability: .buildTool(),
            dependencies: ["SwiftLintBinary"]
        ),
//        .binaryTarget(
//            name: "swiftgen",
//            url: "https://github.com/SwiftGen/SwiftGen/releases/download/6.6.2/swiftgen-6.6.2.artifactbundle.zip",
//            checksum: "7586363e24edcf18c2da3ef90f379e9559c1453f48ef5e8fbc0b818fbbc3a045"
//        ),

//        .plugin(
//            name: "SwiftGen",
//            capability: .buildTool(),
//            dependencies: ["swiftgen"]
//        ),
        .target(
            name: "BasePackage",
            dependencies: [
                "FunctionA",
                "FunctionB",
                "FunctionC"
            ],
            plugins: [
//                "SwiftLint",
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .target(
            name: "FunctionA",
            dependencies: [
                "CommonPackage"
            ],
            plugins: [
//                "SwiftLint",
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .target(
            name: "FunctionB",
            dependencies: [
                "CommonPackage"
            ],
            plugins: [
//                "SwiftLint",
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .target(
            name: "FunctionC",
            dependencies: [
                "CommonPackage"
            ],
            plugins: [
//                "SwiftLint",
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .target(
            name: "CommonPackage",
            dependencies: [
                .product(name: "SwiftExtensions", package: "SwiftExtensions")
            ],
            plugins: [
//                "SwiftLint",
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .testTarget(
            name: "BasePackageTests",
            dependencies: [
                "BasePackage"
            ]
        )
    ]
)
