//
//  PickedForYouView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct PickedForYouView: View {
    var destinations: [PickedDestination]
    let screenSize = UIScreen.main.bounds.size
    
    var body: some View {
        VStack {
            header()
            destinationsScrollView()
        }
    }

    private func header() -> some View {
        HStack(alignment: .firstTextBaseline) {
            Text("For You")
                .font(Muli.bold(size: 22))
            Spacer()
            Button(action: {}) {
                Text("See all")
                    .font(Muli.regular(size: 14))
                    .foregroundColor(Color("PrimaryColor"))
            }
        }
        .padding(.horizontal, 25)
    }
    
    private func destinationsScrollView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 18) {
                ForEach(destinations) { destination in
                    Button(action: {}) {
                        PickedForYouDestinationView(destination: destination)
                    }
                }
            }
            .padding(.horizontal, 25)
            .frame(height: screenSize.width / 2.8 + 5 + 16 + 4 + 16 + 10) // I fixed the height because the scrollview was also scrolling vertically
        }
    }
}

struct PickedForYouView_Previews: PreviewProvider {
    static var previews: some View {
        PickedForYouView(destinations: [
            PickedDestination(title: "Triomph Arc", location: "Paris", imageName: "arc"),
            PickedDestination(title: "Eiffel Tower", location: "Paris", imageName: "eiffel"),
            PickedDestination(title: "Louvre", location: "Paris", imageName: "louvre")
        ])
    }
}
