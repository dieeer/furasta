//
//  LoginView.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    
    @StateObject var loginData = LoginViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
            }
            VStack {
                Text("welcome to furasta")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .offset(y: 300)
                Spacer()
                SignInWithAppleButton { (request) in
                    
                    //                takes email and full name
                    loginData.nonce = randomNonceString()
                    request.requestedScopes = [.email, .fullName]
                    request.nonce = sha256(loginData.nonce)
                    
                } onCompletion:
                { (result) in
                    
                    //                handling error
                    
                    switch result{
                    case .success(let user):
                        
                        print("success")
                        
                        //                    complete login
                        guard let credential = user.credential as? ASAuthorizationAppleIDCredential else {
                            print("error with firebase")
                            return
                        }
                        loginData.authenticate(credential: credential)
                        
                    case.failure(let error):
                        print(error.localizedDescription)
                    }
                }
                .signInWithAppleButtonStyle(.black)
                    .frame(height: 55)
                    .clipShape(Capsule())
                    .padding(.horizontal, 40)
                    .offset(y: -70)
                
            }
            
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
