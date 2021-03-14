//
//  ElementView.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

struct ElementView: View {
    
    let symbolName: String
    
    var body: some View {
        Image(systemName: symbolName)
    }
}
