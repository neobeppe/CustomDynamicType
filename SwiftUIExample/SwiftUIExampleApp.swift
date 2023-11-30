//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import SwiftUI
import CustomDynamicType

@main
struct SwiftUIExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let fontNames = CustomDynamicFontNames(regular: "NewYorkMedium-Regular",
                                               medium: "NewYorkMedium-Medium",
                                               semibold: "NewYorkMedium-Semibold",
                                               bold: "NewYorkMedium-Bold")
        CustomDynamicType.setup(with: fontNames)

        return true
    }
}
