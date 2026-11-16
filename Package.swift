
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "zy_banbif_lib_ui_ios_spm",

    platforms: [
        .iOS(.v15)
    ],

    products: [
        .library(
            name: "zy_banbif_lib_ui_ios_spm",
            targets: [
                "zy_banbif_lib_ui_ios_spm",
                "zy_banbif_lib_ui_ios_spm_dependencies"
            ]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-ios.git",
            exact: "4.4.1"
        )
    ],

    targets: [

        // Framework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.11/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "a3620c59fa49fa6b74bb85efbc13b58e9334df5b40a31e4555ae0af2a3b13a62"
        ),

        // Target auxiliar para incluir Lottie
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",

            path: "Sources/zy_banbif_lib_ui_ios_spm_dependencies",

            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                )
            ]
        )
    ]
)
