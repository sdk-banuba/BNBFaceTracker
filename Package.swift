// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-175-g35e1b614c0"

let package = Package(
    name: "BNBFaceTracker",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBFaceTracker",
            targets: [
                "BNBFaceTracker",
                "BNBFaceTracker_BNBSdkCore",
                "BNBFaceTracker_BNBEffectPlayer",
                "BNBFaceTracker_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBFaceTracker",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-175-g35e1b614c0/BNBFaceTracker.zip",
            checksum: "edeb7c0bcb387fb8cfd2c409532ee5c3769f8ac3571bda25e470a5940417003b"
        ),
        .target(
            name: "BNBFaceTracker_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBFaceTracker_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBFaceTracker_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
