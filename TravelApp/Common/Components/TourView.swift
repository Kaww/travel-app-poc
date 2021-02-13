//
//  TourView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct TourView: View {
    var tour: Tour
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 20)
            
            HStack(spacing: 25) {
                Image(tour.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(tour.title)
                        .font(Muli.semiBold(size: 20))
                        .foregroundColor(.black)
                        .lineLimit(1)
                    Text(tour.date)
                        .font(Muli.semiBold(size: 11))
                        .foregroundColor(Color("SecondaryColor").opacity(0.8))
                }
                .offset(y: -5)
                
                Spacer()
            }
            .padding(.leading, 10)
        }
        .frame(height: 90)
    }
}
struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TourView(tour: Tour.mockedData.first!)
                .padding(.horizontal)
        }
    }
}
