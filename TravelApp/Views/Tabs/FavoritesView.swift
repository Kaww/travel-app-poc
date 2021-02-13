//
//  FavoritesView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            
            Text("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
