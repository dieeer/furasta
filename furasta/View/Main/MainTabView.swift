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
            TipsView()
                .tabItem({
                    Image(systemName: "info.circle")
                    Text("tips")
                })
            ProfileView()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("profile")
                })
            SettingsView()
                .tabItem({
                    Image(systemName: "dial.high")
                    Text("settings")
                })
        }
    }
}


