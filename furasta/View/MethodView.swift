//
//  MethodView.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI
import SnapToScroll

struct MethodView: View {
    var recipe: Recipe
    
    var body: some View {
        HStackSnap(alignment: .center(32)) {
            ForEach(recipe.instructions, id: \.self) { item in
                VStack(alignment: .center) {
                    Text(item)
                        .font(.system(.title, design: .serif))
                        .padding(.all)
                }
                    .snapAlignmentHelper(id: item)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                    
            }.frame(maxWidth: 400, maxHeight: .infinity)
        }
    }
    
    struct MethodView_Previews: PreviewProvider {
        static var previews: some View {
            MethodView(recipe: recipesData[0])
        }
    }
}
