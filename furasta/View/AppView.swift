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
                    Image("tabicon-branch")
                    Text("avocados")
                })
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("recipes")
                })
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("ripening")
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
