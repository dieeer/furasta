//
//  ProfileCardView.swift
//  furasta
//
//  Created by justin on 01/11/2022.
//

import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Image("profilepic")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                        .padding(.leading, 15)
                Spacer()
                Text("profile name")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .padding()
                    .padding(.trailing, 15)
                
            }
            
            VStack {
                HStack(alignment: .center, spacing: 4){
                    HStack{
                        Image(systemName: "mappin")
                        Text("location")
                            .fontWeight(.bold)
                            .font(.title2)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    HStack{
                        Image(systemName: "trophy")
                        Text("0 points")
                            .fontWeight(.bold)
                            .font(.title2)
                    }

                
                   
                }.foregroundColor(Color("ColorGreenMedium"))
                .frame(height: 120)
                .padding()
            .padding(.bottom, 0)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        
    }
}


struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
            .previewLayout(.sizeThatFits)
    }
}
