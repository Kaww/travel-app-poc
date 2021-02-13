//
//  ContentView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct RootView: View {
    @AppStorage("isUserLogged") private var isUserLogged: Bool = true
    @State private var selectedTab: Int = 1
    
    var body: some View {
        if !isUserLogged {
            OnboardingView(isUserLogged: $isUserLogged)
        } else {
            TabView(selection: $selectedTab) {
                HomeView().tag(0)
                SearchView().tag(1)
                FavoritesView().tag(2)
                SettingsView(isUserLogged: $isUserLogged).tag(3)
            }
            .overlay(TabViewOverlay(selectedTab: $selectedTab), alignment: .bottom)
            .ignoresSafeArea(.keyboard) // prevent overlay to follow the keyboard
        }
    }
}

struct TabViewOverlay: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        Color.white
            .edgesIgnoringSafeArea(.vertical)
            .frame(height: 60) // TODO: adapt to all devices tabbar sizes
            .overlay(
                HStack(spacing: 0) {
                    TabButton(for: 0, icon: "house")
                    TabButton(for: 1, icon: "magnifyingglass")
                    TabButton(for: 2, icon: "bookmark")
                    TabButton(for: 3, icon: "slider.horizontal.3")
                }
            )
    }
    
    private func TabButton(for tabIndex: Int, icon: String) -> some View {
        Button(action: { selectedTab = tabIndex }, label: {
            Color.white
                .overlay(
                    Image(systemName: icon)
                        .font(.system(size: 22))
                        .foregroundColor(selectedTab == tabIndex ? .white : Color.black.opacity(0.8))
                        .background(ButtonSelectionChip(selected: selectedTab == tabIndex))
                )
        })
    }
    
    private func ButtonSelectionChip(selected: Bool) -> some View {
        let background = LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("PrimaryColor-alt")]), startPoint: .topLeading, endPoint: .bottomTrailing)
        return Circle()
            .fill(background)
            .frame(width: 45, height: 45)
            .opacity(selected ? 1 : 0)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
