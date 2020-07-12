// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonMark",
    dependencies: [],
    targets: [
        .target(
            name: "CommonMark",
            dependencies: ["Ccmark"]),
        .systemLibrary(
            name: "Ccmark",
            pkgConfig: "libcmark",
            providers: [
                .brew(["cmark"]),
                .apt(["cmark"]),
            ]),
    ]
)

