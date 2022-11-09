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
                Image(systemName: "star.circle")
                    .font(.title)
                    .foregroundColor(Color("ColorTextAdaptive"))
            }
        }    }
}


