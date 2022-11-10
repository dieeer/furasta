//
//  AppView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI
import FirebaseAuth

struct AppView: View {
    @State private var showLogin: Bool = true
    
    @EnvironmentObject var viewModel: LoginViewModel
    
    
    var body: some View {
        if ((viewModel.userSession == nil)) {
            MainTabView().sheet(isPresented: $showLogin){
                LoginView()
            }
            
        }
        else {
            MainTabView()
        }
    }
    
    
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
