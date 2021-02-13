//
//  HomeView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("bold - Home View")
                    .font(Muli.bold(size: 20))
                Text("boldItalic - Home View")
                    .font(Muli.boldItalic(size: 20))
                Text("extraLight - Home View")
                    .font(Muli.extraLight(size: 20))
                Text("extraLightItalic - Home View")
                    .font(Muli.extraLightItalic(size: 20))
                Text("italic - Home View")
                    .font(Muli.italic(size: 20))
                Text("light - Home View")
                    .font(Muli.light(size: 20))
                Text("lightItalic - Home View")
                    .font(Muli.lightItalic(size: 20))
                Text("semiBoldItalic - Home View")
                    .font(Muli.semiBoldItalic(size: 20))
                Text("semiBold - Home View")
                    .font(Muli.semiBold(size: 20))
                Text("regular - Home View")
                    .font(Muli.regular(size: 20))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
