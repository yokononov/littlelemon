//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import SwiftUI

@main
struct Little_LemonApp: App {
    var body: some Scene {
        WindowGroup {
            if UserDefaultHelper.isLogin {
                HomeScreen()
            } else {
                UnboardingView()
            }
        }
    }
}
