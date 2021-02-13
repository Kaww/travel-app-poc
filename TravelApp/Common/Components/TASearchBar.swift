//
//  TASearchBar.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct TASearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        Capsule()
            .padding(.horizontal, 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .shadow(color: Color.black.opacity(0.1), radius: 20)
            .overlay(
                GeometryReader { proxy in
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(Font.system(size: 18))
                            .foregroundColor(Color("SecondaryColor"))
                        TextField("Where do you want to go?", text: $searchText)
                            .font(Muli.regular(size: searchText.isEmpty ? 14 : 18))
                            .foregroundColor(.black)
                    }
                    .frame(width: proxy.size.width, height: proxy.size.height, alignment: .leading)
                    .padding(.horizontal, 16)
                }.padding(.horizontal, 25)
            )
    }
}

struct TASearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("BackgroundColor")
            TASearchBar(searchText: .constant(""))
        }
    }
}
