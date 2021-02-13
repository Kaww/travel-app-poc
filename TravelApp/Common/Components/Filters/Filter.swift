//
//  Filter.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 13/02/2021.
//

import SwiftUI

struct Filter: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(Muli.bold(size: 15))
            
            Spacer()
            
            HStack {
                Text("Select")
                    .font(Muli.semiBold(size: 11))
                Image(systemName: "chevron.right")
                    .font(Font.system(size: 10).weight(.bold))
                    .offset(y: 1)
            }
            .foregroundColor(Color("PrimaryColor"))
        }
        .frame(height: 50)
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(title: "Filter")
    }
}
