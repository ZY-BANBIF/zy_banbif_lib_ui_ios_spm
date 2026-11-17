
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

        // XCFramework principal descargado desde Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.18/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "24a0fa3592d1360d5890a0ef1afb61db0e191d0bc54d9076ed2f81965d45f72d"
        ),

        // Target auxiliar para declarar Lottie
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",
            dependencies: [
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                )
            ],
            path: "zy_banbif_lib_ui_ios_spm_dependencies"
        )
    ]
)
