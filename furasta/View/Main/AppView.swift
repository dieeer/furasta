//
//  AppView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI
import FirebaseAuth

struct AppView: View {
    
    @State private var userIsLoggedIn = false
    
    var user = Auth.auth().currentUser
    
    var body: some View {
        if Auth.auth().currentUser != nil {
            content
        }
        else {
            LoginView()
        }
    }
    
    var content: some View {
        TabView{
            FurastaView()
                .tabItem({
                    Image(systemName: "house")
                    Text("home")
                })
            SettingsView()
                .tabItem({
                    Image(systemName: "dial.high")
                    Text("settings")
                })
            ProfileView()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("profile")
                })
            TipsView()
                .tabItem({
                    Image(systemName: "info.circle")
                    Text("tips")
                })
        }
    }
        
    
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
