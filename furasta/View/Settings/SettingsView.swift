//
//  SettingsView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct SettingsView: View {
//    properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    static let shared = LoginViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
//            header
            
            VStack(alignment: .center, spacing: 5) {
                
                Text("furasta")
                    .font(.system(.title, design:.serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
//                section 1
                Section(header: Text("general settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("enable notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("background refresh")
                    }
                }
                
//                section 2
                Section(header: Text("about")) {
                    HStack{
                        Text("developer").foregroundColor(Color.gray)
                        Spacer()
                        Text("justin reid")
                        
                    }
                    
                }
                
                Section(header: Text("you are currently logged in")) {
                    Button(action: {

                            }) {
                                Text("log out")
                                    .foregroundColor(Color.orange)
                            }.onTapGesture {
                                SettingsView.shared.signOut()
                            }
                    Button(action: {

                            }) {
                                Text("delete account")
                                    .foregroundColor(Color.red)
                            }.onTapGesture {
                                SettingsView.shared.signOut()
                            }
                }
                
            }
        }
        .background(Color("ColorAppearanceAdaptive"))
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
