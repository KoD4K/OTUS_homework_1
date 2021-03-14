//
//  StartScreen.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

struct StartScreen: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var viewModel: ListScreenViewModel
    
    var body: some View {
        VStack {
            Text("Start screen")
            Divider()
            Button(action: {
                router.selection = 1
                viewModel.vehicle = .tram
            }, label: {
                Text("Open tram")
            })
            Divider()
            Button(action: {
                router.selection = 1
                viewModel.vehicle = .bike
            }, label: {
                Text("Open bike")
            })
            Divider()
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}

