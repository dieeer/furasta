//
//  SignInView.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import SwiftUI
import FirebaseFirestore
import AuthenticationServices
import CryptoKit

struct SignInView: View {
  @Environment(\.window) var window: UIWindow?
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  @State var signInHandler: SignInWithAppleCoordinator?
  
  var body: some View {
    VStack {
      Text("Create an account to save your tasks and access them anywhere.")
        .font(.headline)
        .fontWeight(.medium)
        .multilineTextAlignment(.center)
        .padding(.top, 20)

      Spacer()

      SignInWithAppleButton()
        .frame(width: 280, height: 45)
        .onTapGesture { // (1)
          self.signInWithAppleButtonTapped() // (2)
      }

      // other buttons go here
    }
  }

  func signInWithAppleButtonTapped() {
    signInHandler = SignInWithAppleCoordinator(window: self.window)
    signInHandler?.link { (user) in
      print("User signed in \(user.uid)")
      self.presentationMode.wrappedValue.dismiss() // (3)
    }
  }
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
  }
}
