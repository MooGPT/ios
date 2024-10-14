// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "MooGPT",
  // Minimum platform versions should be kept in sync with the per-platform targets in MooGPT.xcodeproj, ios.podspec, and spm's Package.swift
  platforms: [.iOS("10.0"), .macOS("10.15"), .tvOS("13.0"), .custom("visionOS", versionString: "1.0")],
  products: [.library(name: "MooGPT", targets: ["MooGPT"])],
  dependencies: [
    .package(url: "https://github.com/MooGPT/ios", .upToNextMajor(from: "1.0.1")),
  ],
  targets: [
    .target(
      name: "MooGPT",
      path: "Sources",
      exclude: [
        "Private/EmbeddedLibraries/README.md",
        "Private/EmbeddedLibraries/ZipFoundation/README.md",
        "Private/EmbeddedLibraries/EpoxyCore/README.md",
        "Private/EmbeddedLibraries/LRUCache/README.md",
      ],
      resources: [.copy("PrivacyInfo.xcprivacy")]),
  ])
