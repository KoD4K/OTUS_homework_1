//
//  ContentView.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

struct RootScreen: View {
        
    @EnvironmentObject var router: Router
    
    var body: some View {
        TabView(selection: $router.selection) {
            StartScreen()
                .tabItem {
                    VStack {
                        Text("Start")
                        Image(systemName: "pencil")
                    }
                }
                .tag(0)
            ListScreen()
                .tabItem {
                    VStack {
                        Text("List")
                        Image(systemName: "list.dash")
                    }
                }
                .tag(1)
            AdditionalScreen()
                .tabItem {
                    VStack {
                        Text("Additional")
                        Image(systemName: "rectangle.on.rectangle")
                    }
                }
                .tag(2)
        }
    }
    
}

struct RootScreen_Previews: PreviewProvider {
    static var previews: some View {
        RootScreen()
    }
}
