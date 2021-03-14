//
//  AdditionalScreen.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI
import UIComponents

struct AdditionalScreen: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                showSheet.toggle()
            }) {
                Text("Show sheet")
            }
            .sheet(isPresented: $showSheet, content: {
                Text("Sheet")
            })
            ActivityView()
        }
    }
}

struct AdditionalScreen_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalScreen()
    }
}
