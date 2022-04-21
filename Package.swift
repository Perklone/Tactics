// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "LearnTactics",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "LearnTactics",
            targets: ["AppModule"],
            bundleIdentifier: "com.perklone.LearnTactics",
            teamIdentifier: "YSG9AW6NGQ",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .landscapeRight,
                .landscapeLeft
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)