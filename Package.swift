// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-194-gb1629e3e8c"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-194-gb1629e3e8c/BNBFaceTracker.zip",
            checksum: "861d8fbf96961465b7273b7efbbd5222fc319f365fb7048b9061ae93468d1f81"
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
