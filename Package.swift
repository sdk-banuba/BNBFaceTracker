// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.6-65-gbf994362d5"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.6-65-gbf994362d5/BNBFaceTracker.zip",
            checksum: "c3cb114501606bfe4c871a37b447febfbeabf2a3f3ebd8565e8566d986018224"
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
