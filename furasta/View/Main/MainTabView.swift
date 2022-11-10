//
//  MainTabView.swift
//  furasta
//
//  Created by justin on 09/11/2022.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
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
            LoginView()
                .tabItem({
                    Image(systemName: "lock")
                    Text("login")
                })
        }
    }
}


