// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.6"

let package = Package(
    name: "BNBFaceTracker",
    platforms: [
        .iOS(.v15)
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.6/BNBFaceTracker.zip",
            checksum: "259e1ef2bb2c860ffc43dafac4c293e4e04af6eb91701cb2e4199c954a7a7dad"
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
