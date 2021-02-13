//
//  TAFilter.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct TAFilter: View {
    @Binding var selectedFilterTypes: Set<FilterType>

    var body: some View {
        HStack(spacing: 10) {
            TAFilterItem(type: .Adventures, isSelected: selectedFilterTypes.contains(.Adventures)) { isSelected in
                if isSelected {
                    selectedFilterTypes.insert(.Adventures)
                } else {
                    selectedFilterTypes.remove(.Adventures)
                }
            }
            TAFilterItem(type: .Tours, isSelected: selectedFilterTypes.contains(.Tours)) { isSelected in
                if isSelected {
                    selectedFilterTypes.insert(.Tours)
                } else {
                    selectedFilterTypes.remove(.Tours)
                }
            }
            TAFilterItem(type: .Sights, isSelected: selectedFilterTypes.contains(.Sights)) { isSelected in
                if isSelected {
                    selectedFilterTypes.insert(.Sights)
                } else {
                    selectedFilterTypes.remove(.Sights)
                }
            }
        }
    }
    
    enum FilterType: String {
        case Adventures = "Adventures"
        case Tours = "Tours"
        case Sights = "Sights"
    }
}

struct TAFilterItem: View {
    var type: TAFilter.FilterType
    var isSelected: Bool
    var selection: (Bool) -> ()
    
    var body: some View {
        Text(type.rawValue)
            .font(Muli.bold(size: 12))
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .foregroundColor(isSelected ? .white : .black)
            .background(
                Capsule().foregroundColor(isSelected ? Color("PrimaryColor").opacity(0.8) : Color("SecondaryColor").opacity(0.2))
            )
            .overlay(
                Capsule()
                    .stroke(lineWidth: 2)
                    .foregroundColor(isSelected ? Color("PrimaryColor").opacity(0.8) : Color("SecondaryColor").opacity(0))
            )
            .onTapGesture {
                selection(!isSelected)
            }
    }
}

struct TAFilter_Previews: PreviewProvider {
    static var previews: some View {
        TAFilter(selectedFilterTypes: .constant([.Sights, .Adventures]))
    }
}
