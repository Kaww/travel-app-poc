//
//  FilterWithToggle.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct FilterWithToggle: View {
    var title: String
    @Binding var isOn: Bool
    
    var body: some View {
        HStack {
            Text(title)
                .font(Muli.bold(size: 15))
            
            Spacer()
            
            Toggle(isOn: $isOn, label: {})
                .toggleStyle(SwitchToggleStyle(tint: Color("PrimaryColor")))
        }
    }
}

struct FilterWithToggle_Previews: PreviewProvider {
    static var previews: some View {
        FilterWithToggle(title: "Filter", isOn: .constant(true))
    }
}
