//
//  SettingsView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isUserLogged: Bool
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Settings")
                Button("log out") {
                    isUserLogged = false
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(isUserLogged: .constant(true))
    }
}
