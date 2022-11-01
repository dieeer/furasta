//
//  AppView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            FurastaView()
                .tabItem({
                    Image(systemName: "house")
                    Text("home")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("settings")
                })
            ProfileView()
                .tabItem({
                    Image(systemName: "person.fill")
                    Text("profile")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
