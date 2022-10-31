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
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("recipes")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("settings")
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
