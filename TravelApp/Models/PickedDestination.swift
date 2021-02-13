//
//  PickedDestination.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import Foundation

struct PickedDestination: Identifiable {
    let id = UUID()
    var title: String
    var location: String
    var imageName: String
    
    static var mockedData = [
        PickedDestination(title: "Triomph Arc", location: "Paris", imageName: "arc"),
        PickedDestination(title: "Eiffel Tower", location: "Paris", imageName: "eiffel"),
        PickedDestination(title: "Louvre", location: "Paris", imageName: "louvre"),
        PickedDestination(title: "Twin Towers", location: "Kuala Lumpur", imageName: "kl"),
    ]
}
