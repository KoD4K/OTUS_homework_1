//
//  ListScreen.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

struct ListScreen: View {
    
    @EnvironmentObject var viewModel: ListScreenViewModel
    @EnvironmentObject var router: Router
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.elements) { element in
                    ListCell(element: element)
                }
            } //LIST
            .navigationTitle("Vehicles")
            .navigationBarTitleDisplayMode(.inline)
            .overlay(NavigationLink(
                        destination: ElementView(symbolName: viewModel.getCurrentElement()?.symbolName ?? ""),
                        isActive: $viewModel.isLinkActive)
                         {
                            EmptyView().hidden()
                        })
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
