//
//  ProfileView.swift
//  furasta
//
//  Created by justin on 01/11/2022.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    
    
    var body: some View {
        ScrollView{
            VStack {
                logoutButton
                ProfileCardView()
                    .frame(maxWidth: 640)
                    .shadow(radius: 4, x: 0, y: 4)
                    .padding(.horizontal)
            }
        }
    }
    
    var logoutButton: some View {
        Button {
            LoginViewModel.shared.signOut()
        } label: {
            Text("logout")
        }
    }
}

