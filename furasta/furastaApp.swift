//
//  furastaApp.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

@main
struct furastaApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView().environmentObject(LoginViewModel.shared)
        }
    }
}
