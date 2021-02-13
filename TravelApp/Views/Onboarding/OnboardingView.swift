//
//  OnboardingView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isUserLogged: Bool
    @State private var isShowingLogin = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                onboardingImage()
                onboardingCard(size: proxy.size)
            }
            .sheet(isPresented: $isShowingLogin) {
                LoginView(isUserLogged: $isUserLogged)
            }
        }
    }
    
    let buttonBackground = LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("PrimaryColor-alt")]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isUserLogged: .constant(false))
    }
}

// MARK: UI
extension OnboardingView {
    private func onboardingImage() -> some View {
        VStack {
            Image("Onboarding")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
            Spacer()
        }
    }
    
    private func onboardingCard(size: CGSize) -> some View {
        VStack {
            Spacer()
            Color.white
                .frame(height: size.height / 1.8)
                .cornerRadius(40, corners: [.topLeft, .topRight])
                .overlay(
                    onboardingCardContent()
                )
        }
    }
    
    private func onboardingCardContent() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Explore\nNew Places")
                .font(Muli.bold(size: 35))
            
            Text("The application will help you find attractions, tours or adventures in a new city")
                .font(Muli.light(size: 16))
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: { isShowingLogin = true }, label: {
                    Circle()
                        .fill(buttonBackground)
                        .frame(width: 80, height: 80)
                        .overlay(
                            Image(systemName: "arrow.right")
                                .font(Font.system(size: 28).weight(.medium))
                                .foregroundColor(.white)
                        )
                })
            }
            Spacer()
        }
        .padding(.horizontal, 18)
        .padding(.top, 18)
    }
}
