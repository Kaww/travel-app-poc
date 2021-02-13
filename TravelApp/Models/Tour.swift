//
//  Tour.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import Foundation

struct Tour: Identifiable {
    let id = UUID()
    var title: String
    var imageName: String
    var date: String
    
    static var mockedData = [
        Tour(title: "European Tour", imageName: "europe", date: "14 april - 25 april 2021"),
        Tour(title: "Castles of Europe", imageName: "castles", date: "16 may - 19 may 2021"),
        Tour(title: "Paris Romantic Tour", imageName: "paris-romantic", date: "13 february - 15 february 2021")
    ]
}
