//
//  FiltersView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct FiltersView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedFilterTypes = Set<TAFilter.FilterType>()
    @State var isLowToHighOn = true
    
    var body: some View {
        VStack {
            filtersTitleView()
            List {
                typeFilter()
                priceRangeFilter()
                Filter(title: "Date")
                Filter(title: "Time")
                Filter(title: "Duration")
            }
            .listStyle(InsetListStyle())
        }
    }
}

// MARK: Preview
struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}

// MARK: UI
extension FiltersView {
    private func filtersTitleView() -> some View {
        HStack(alignment: .bottom) {
            Button(action: { presentationMode.wrappedValue.dismiss() }, label: {
                Image(systemName: "multiply")
                    .foregroundColor(.black)
                    .font(Font.system(size: 25).weight(.regular))
            })
            
            Spacer()
            
            Text("Filters")
                .font(Muli.semiBold(size: 17))
                .foregroundColor(.black)
            
            Spacer()
            
            Button(action: { presentationMode.wrappedValue.dismiss() }, label: {
                Text("Done")
                    .font(Muli.semiBold(size: 15))
                    .foregroundColor(Color("PrimaryColor"))
            })
        }
        .frame(height: 40)
        .padding(.top, 10)
        .padding(.horizontal, 25)
    }
}

// MARK: UI - Filters
extension FiltersView {
    private func typeFilter() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Type")
                .font(Muli.bold(size: 15))
            
            TAFilter(selectedFilterTypes: $selectedFilterTypes)
        }
        .padding(.bottom, 12)
    }
    
    // export to component
    private func priceRangeFilter() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Price range")
                .font(Muli.bold(size: 15))
            Text("We will select travels in this range for you")
                .font(Muli.regular(size: 11))
                .foregroundColor(Color("SecondaryColor"))
            
            FilterWithToggle(title: "Low to high", isOn: $isLowToHighOn)
        }
        .padding(.vertical, 12)
    }
}
