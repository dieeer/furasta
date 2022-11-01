//
//  ProfileView.swift
//  furasta
//
//  Created by justin on 01/11/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack {
                ProfileCardView()
                    .frame(maxWidth: 640)
                    .shadow(radius: 4, x: 0, y: 4)
                    .padding(.horizontal)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
