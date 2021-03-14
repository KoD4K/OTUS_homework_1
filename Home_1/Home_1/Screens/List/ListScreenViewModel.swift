//
//  ListScreenViewModel.swift
//  Home_1
//
//  Created by Evgenii Plenkin on 14.03.2021.
//

import Foundation

final class ListScreenViewModel: ObservableObject {
    
    @Published var vehicle: VehicleType = .none {
        didSet {
            isLinkActive = vehicle != .none
        }
    }
    @Published var isLinkActive: Bool = false
    
    @Published private(set) var elements = [
        Element(name: "Tram", type: .tram, symbolName: "tram"),
        Element(name: "Bus", type: .bus, symbolName: "bus"),
        Element(name: "Bicycle", type: .bike, symbolName: "bicycle"),
        Element(name: "Airplane", type: .airplane, symbolName: "airplane"),
        Element(name: "Car", type: .car, symbolName: "car")
    ]
    
    func getElement(byType type: VehicleType) -> Element? {
        elements.filter { $0.type == type }.first
    }
    
    func getCurrentElement() -> Element? {
        getElement(byType: vehicle)
    }
}
