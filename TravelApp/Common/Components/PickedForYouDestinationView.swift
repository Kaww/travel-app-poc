//
//  PickedForYouDestinationView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct PickedForYouDestinationView: View {
    var destination: PickedDestination
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(destination.imageName)
                .resizable()
                .frame(width: width / 2.8, height: width / 2.8)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
            
            VStack(alignment: .leading, spacing: 0) {
                Text(destination.title)
                    .font(Muli.bold(size: 16))
                    .foregroundColor(.black)
                    .lineLimit(1)
                
                HStack(spacing: 4) {
                    Image("pin")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("PrimaryColor"))
                        .frame(width: 16, height: 16)
                    Text(destination.location)
                        .foregroundColor(Color("PrimaryColor"))
                        .font(Muli.semiBold(size: 13))
                }
                .padding(.leading, 2)
            }
            .padding(.leading, 5)
        }
        .frame(width: width / 2.8)
    }
    
    
}

struct PickedForYouDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        PickedForYouDestinationView(destination: PickedDestination(title: "Twin towers", location: "Kuala Lumpur", imageName: "kl"))
        PickedForYouDestinationView(destination: PickedDestination(title: "Twin towers", location: "Kuala Lumpur", imageName: "louvre"))
    }
}
