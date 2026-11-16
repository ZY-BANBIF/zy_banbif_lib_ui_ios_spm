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
    targets: [
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "https://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.5/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "267ec1155f0b9d404fb984a118830c021d25f72c619e17d7a9febe9436fcdca6"
        )
    ]
)
