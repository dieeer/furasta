//
//  RecipeCookingView.swift
//  furasta
//
//  Created by justin on 30/10/2022.
//

import SwiftUI

struct RecipeCookingView: View {
    
//properties
    
    var recipe: Recipe
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2.fill")
                    .scaledToFit()
                    .foregroundColor(Color("ColorTextAdaptive"))
                    
                
                Text("serves \(recipe.serves)")
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .font(.footnote)
                    .italic()
                    .padding(.leading)
            }
            Spacer()
            Divider()
            Spacer()
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock.fill")
                    .scaledToFit()
                    .foregroundColor(Color("ColorTextAdaptive"))
                    
                Text("\(recipe.preparation) minutes")
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .font(.footnote)
                    .italic()
                    .padding(.leading)
            }
            
            
        }
        .padding()
        .padding(.bottom, 12)
    }
}


