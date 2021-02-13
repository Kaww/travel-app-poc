//
//  LoginView.swift
//  TravelApp
//
//  Created by KAWRANTIN LE GOFF on 12/02/2021.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var isUserLogged: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Capsule()
                    .frame(width: 60, height: 6)
                    .foregroundColor(Color.black.opacity(0.2))
                Spacer()
            }
            .padding(.top, 10)
            
            ScrollView(.vertical) {
                VStack(spacing: 40) {
                    titleSection()
                    
                    signUpButtons()
                    
                    skipButton()
                    
                    privacyMessage()
                    
                    Spacer()
                }
                .padding(.top, 40)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isUserLogged: .constant(false))
    }
}

// MARK: UI
extension LoginView {
    private func titleSection() -> some View {
        VStack(spacing: 20) {
            Text("Sign Up\nfor free")
                .font(Muli.bold(size: 35))
                .multilineTextAlignment(.center)
            
            Text("By registering you can get\nadditional features")
                .font(Muli.regular(size: 16))
                .multilineTextAlignment(.center)
                .opacity(0.4)
        }
    }
    
    private func skipButton() -> some View {
        Button(action: { isUserLogged = true }) {
            Capsule()
                .frame(width: 60, height: 30)
                .foregroundColor(Color.blue.opacity(0.15))
                .overlay(
                    Text("Skip")
                        .foregroundColor(Color.blue.opacity(0.8))
                        .font(Muli.regular(size: 13))
            )
        }
    }
    
    private func privacyMessage() -> some View {
        VStack {
            Text("By signing you confirm that you agree our")
            Text("privacy policy")
                .underline()
                .foregroundColor(.blue)
        }
        .font(Muli.regular(size: 13))
    }
}

// MARK: UI - Login Buttons
extension LoginView {
    private func signUpButtons() -> some View {
        VStack(spacing: 15) {
            signUpButton(with: "Apple", systemIcon: "applelogo", color: .black)
            signUpButton(with: "Google", icon: "GoogleLogo", color: Color("GoogleColor"))
            signUpButton(with: "Facebook", icon: "FacebookLogo", color: Color("FacebookColor"))
            signUpButton(with: "Email", systemIcon: "at", color: .blue)
        }
        .padding(.horizontal, 25)
    }
    
    private func signUpButton(with service: String, systemIcon: String, color: Color) -> some View {
        Button(action: { isUserLogged = true }, label: {
            Capsule()
                .frame(height: 60)
                .foregroundColor(color)
                .overlay(
                    HStack(spacing: 20) {
                        Image(systemName: systemIcon)
                            .font(Font.system(size: 20).weight(.medium))
                        Text("Continue with \(service)")
                            .font(Muli.regular(size: 16))
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                )
        })
    }
    
    private func signUpButton(with service: String, icon: String, color: Color) -> some View {
        Button(action: { isUserLogged = true }, label: {
            Capsule()
                .frame(height: 60)
                .foregroundColor(color)
                .overlay(
                    HStack(spacing: 20) {
                        Image(icon)
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                        Text("Continue with \(service)")
                            .font(Muli.regular(size: 16))
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                )
        })
    }
}
