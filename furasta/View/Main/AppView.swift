//
//  AppView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI
import FirebaseAuth

struct AppView: View {
    @EnvironmentObject var viewModel: LoginViewModel
    
    
    var body: some View {
        if viewModel.userSession == nil {
            LoginView()
        } else {
            MainTabView()
        }
    }
    
    
    
}


