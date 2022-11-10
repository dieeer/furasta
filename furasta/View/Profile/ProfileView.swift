//
//  ProfileView.swift
//  furasta
//
//  Created by justin on 01/11/2022.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ProfileView: View {
    
    let userEmail = Auth.auth().currentUser?.email
    
    
    var body: some View {
            VStack {
                VStack(alignment: .center, spacing: 5) {
                    
                    Text("furasta")
                        .font(.system(.title, design:.serif))
                        .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    
                }
                .padding()
                ScrollView{
                    VStack(alignment: .leading){
                        Text(userEmail ?? "justin")
                            .font(.system(.title2, design: .serif))
                            .padding(.all)
                            .offset(x: 80)
                        
                    }
                
            }
        }.background(Color("ColorAppearanceAdaptive"))
    }
    
}

