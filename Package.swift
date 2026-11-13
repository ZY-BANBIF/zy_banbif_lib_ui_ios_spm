
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
            targets: ["zy_banbif_lib_ui_ios_spm"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "zy_banbif_lib_ui_ios_spm",
            url: "http://repo.zytrust.com/artifactory/zy-mobile-maven/spm/banbif/ui/1.0.0/zy_banbif_lib_ui_ios_spm.xcframework.zip",
            checksum: "f507347aa94e3ce4d3fb56afedc07a7fa3f4607b8881943ef2f3fb1577897a6c"
        )
    ]
)
