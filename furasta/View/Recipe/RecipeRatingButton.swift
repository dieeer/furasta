//
//  RecipeRatingButton.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import SwiftUI

struct RecipeRatingButton: View {
    @Binding var recipeComplete: Bool

    var body: some View {
                if (recipeComplete == true){
                    Button("rate recipe", action: { self.recipeComplete = false})
                        .modifier(ratingButtonModifier())
                    
                }
        else {
            Button("rate recipe", action: { self.recipeComplete = false})
                .modifier(ratingButtonDisabledModifier())
                .disabled(true)
                .strikethrough()
        }
        }
    
}

