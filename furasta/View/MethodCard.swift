//
//  MethodCard.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI

struct MethodCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text(recipe.instructions)
        }
    }
}

struct MethodCard_Previews: PreviewProvider {
    static var previews: some View {
        MethodCard(recipe: recipesData[0])
    }
}
