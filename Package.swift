// swift-tools-version:5.5

import PackageDescription;

let package = Package(
    name: "mobile-tss-swift",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MobileTSS",
            targets: ["MobileTSS"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "mobile-tss-ffi", path: "./mobile-tss-ffi.xcframework"),
        .target(
            name: "MobileTSS",
            dependencies: [
                .target(name: "mobile-tss-ffi")
            ]
        ),
        .testTarget(
            name: "MobileTSSTests",
            dependencies: ["MobileTSS"]
        ),
    ]
)