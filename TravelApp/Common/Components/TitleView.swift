//
//  TitleView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct TitleView<Content: View>: View {
    var title: String
    var button: Content
    
    init(title: String, @ViewBuilder button: @escaping () -> Content) {
        self.title = title
        self.button = button()
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(Muli.bold(size: 40))
                .foregroundColor(.black)
            
            Spacer()
            
            button
        }
        .padding(.horizontal, 25)
    }
}

struct TitleButtonView: View {
    @Binding var isFiltersShowing: Bool
    
    var icon: String
    var iconColor: Color = .black
    
    var body: some View {
        Button(action: { isFiltersShowing = true }, label: {
            Circle()
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .shadow(color: Color.black.opacity(0.1), radius: 20)
                .overlay(
                    Image(systemName: icon)
                        .foregroundColor(iconColor)
                        .font(Font.system(size: 22).weight(.medium))
                )
        })
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Search") {
            TitleButtonView(isFiltersShowing: .constant(false), icon: "slider.vertical.3")
        }
    }
}
