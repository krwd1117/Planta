import ProjectDescription

let project = Project(
    name: "Planta",
    targets: [
        .target(
            name: "Planta",
            destinations: .iOS,
            product: .app,
            bundleId: "com.krwd.Planta",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Planta/Sources/**"],
            resources: ["Planta/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "PlantaTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.krwd.PlantaTests",
            infoPlist: .default,
            sources: ["Planta/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Planta")]
        ),
    ]
)
