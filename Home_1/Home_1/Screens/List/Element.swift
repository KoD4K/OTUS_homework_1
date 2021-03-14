//
//  Element.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

enum VehicleType {
    case none
    case tram
    case bus
    case bike
    case airplane
    case car
}

struct Element {
    let name: String
    let type: VehicleType
    let symbolName: String
}

extension Element: Identifiable {
    var id: String {
        name
    }
}
