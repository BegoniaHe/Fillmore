import ProjectDescription

let project = Project(
    name: "Fillmore",
    targets: [
        .target(
            name: "Fillmore",
            destinations: .macOS,
            product: .app,
            bundleId: "dev.tuist.Fillmore",
            infoPlist: .default,
            buildableFolders: [
                "Fillmore/Sources",
                "Fillmore/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "FillmoreTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "dev.tuist.FillmoreTests",
            infoPlist: .default,
            buildableFolders: [
                "Fillmore/Tests"
            ],
            dependencies: [.target(name: "Fillmore")]
        ),
    ]
)
