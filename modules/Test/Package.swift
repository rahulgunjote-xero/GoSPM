// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Test",
            targets: ["Test"]),
    ],
    dependencies: [
      .package(url: "https://github.com/Quick/Quick", exact: "5.0.1"),
      .package(url: "https://github.com/Quick/Nimble.git", exact: "10.0.0"),
      .package(url: "https://github.com/pimms/swift-snapshot-testing.git", branch: "optimization")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Test",
            dependencies: [
              "Quick",
              "Nimble",
              .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        )
    ]
)
