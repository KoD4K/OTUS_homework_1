//
//  ListCell.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import SwiftUI

struct ListCell: View {
    
    let element: Element
    
    var body: some View {
        NavigationLink(
            destination: ElementView(symbolName: element.symbolName),
            label: {
                Text(element.name)
            })
    }
}

