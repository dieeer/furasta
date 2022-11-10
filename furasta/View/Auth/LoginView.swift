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
                
            }
            VStack(alignment: .center) {
                VStack {
                    VStack{
                        Spacer()
                        Image("logo-no-background")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 100)
                            .foregroundColor(Color("ColorTextAdaptive"))
                    }
                    Text("welcome to furasta")
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .foregroundColor(Color("ColorTextAdaptive"))
                    Text("a simpler way to cook")
                        .font(.system(.title2, design: .serif))
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .foregroundColor(Color("ColorTextAdaptive"))
                    
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
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    .signInWithAppleButtonStyle(.black)
                    .frame(height: 55)
                    .clipShape(Capsule())
                    .padding(.horizontal, 40)
                    .padding(.bottom, 70)
                    
                    Text("built with love in 🏴󠁧󠁢󠁳󠁣󠁴󠁿")
                        .font(.system(.footnote, design: .serif))
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                        .foregroundColor(Color("ColorTextAdaptive"))
                }.frame(alignment: .bottom)
                
                
            }
            
            .background(Color("ColorAppearanceAdaptive"))
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
