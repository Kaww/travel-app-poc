//
//  SearchView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct SearchView: View {
    let screenSize = UIScreen.main.bounds.size
    @State private var isFiltersShowing = false
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical) {
                VStack(spacing: 25) {
                    TitleView(title: "Search") {
                        TitleButtonView(isFiltersShowing: $isFiltersShowing, icon: "slider.vertical.3")
                    }
                    
                    TASearchBar(searchText: $searchText)
                    
                    PickedForYouView(destinations: PickedDestination.mockedData)
                    
                    PopularToursView()
                    
                    Spacer()
                }
                .padding(.top, 30)
            }
        }
        .sheet(isPresented: $isFiltersShowing, content: { FiltersView() })
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct PopularToursView: View {
    
    var body: some View {
        VStack {
            header()
            VStack(spacing: 15) {
                ForEach(Tour.mockedData) { tour in
                    Button(action: {}) {
                        TourView(tour: tour)
                    }
                }
                .padding(.horizontal, 25)
            }
        }
    }
    
    private func header() -> some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Popular")
                .font(Muli.bold(size: 22))
            Spacer()
        }
        .padding(.horizontal, 25)
    }
}
