
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

        // XCFramework alojado en Artifactory
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.5/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "267ec1155f0b9d404fb984a118830c021d25f72c619e17d7a9febe9436fcdca6"
        ),

        // Target auxiliar para resolver Lottie
        .target(
            name: "zy_banbif_lib_ui_ios_spm_dependencies",
            dependencies: [
                .target(name: "zy_banbif_lib_ui_ios_spm"),
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                )
            ]
        )
    ]
)
