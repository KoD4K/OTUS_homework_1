//
//  Home_1App.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

@main
struct Home_1App: App {
    var body: some Scene {
        WindowGroup {
            RootScreen()
                .environmentObject(Router())
                .environmentObject(ListScreenViewModel())
        }
    }
}
