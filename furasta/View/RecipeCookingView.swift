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
                    .foregroundColor(Color("ColorGreenMedium"))
                    .font(.title)
                Text("serves \(recipe.serves)")
            }
            Spacer()
            Divider()
            Spacer()
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock.fill")
                    .foregroundColor(Color("ColorGreenMedium"))
                    .font(.title)
                Text("\(recipe.preparation) minutes")
            }
            
        }
        .padding()
        .padding(.bottom, 12)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width:320, height: 60))
    }
}
