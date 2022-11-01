//
//  RecipeRatingView.swift
//  furasta
//
//  Created by justin on 30/10/2022.
//

import SwiftUI

struct RecipeRatingView: View {
//    properties
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "leaf.fill")
                    .font(.title)
                    .foregroundColor(Color("ColorGreenLight"))
            }
        }    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
