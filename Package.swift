// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MotherShip",
  products: [
      // Products define the executables and libraries produced by a package, and make them visible to other packages.
      .library(
          name: "MotherShip",
          targets: ["MotherShip"]),
  ],
  dependencies: [
      // Dependencies declare other packages that this package depends on.
      // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/thecb4/HyperSpace.git", .branch("master")),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
        name: "MotherShip",
        dependencies: ["HyperSpace"]),
    .testTarget(
        name: "MotherShipTests",
        dependencies: ["MotherShip", "HyperSpace"]),
  ]
)
