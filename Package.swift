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
                "zy_banbif_lib_ui_ios_spm"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com",
            exact: "4.4.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://zytrust.com",
            checksum: "267ec1155f0b9d404fb984a118830c021d25f72c619e17d7a9febe9436fcdca6"
        ),
        .target(
            name: "zy_banbif_lib_ui_ios_spm",
            dependencies: [
                "zy_banbif_lib_ui_ios_spm",
                .product(
                    name: "Lottie",
                    package: "lottie-spm"
                )
            ]
        )
    ]
)
