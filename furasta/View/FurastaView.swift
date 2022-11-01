//
//  FurastaView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct FurastaView: View {
    //    MARK: - PROPERTIES
    var recipes: [Recipe] = recipesData
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 0) {
                Text("furasta")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .padding(.all)
            }
            ScrollView{
                
                    VStack(alignment: .leading, spacing: 5) {
                        Text("recipes")
                            .fontWeight(.bold)
                            .modifier(TitleModifier())
                            .padding(.leading, 10)
                        
                        VStack(alignment: .center, spacing: 20){
                            ForEach(recipes) {
                                item in
                                RecipeCardView(recipe: item)
                            }
                        }
                        .frame(maxWidth: 640)
                        .padding(.horizontal)
                        
                    }
                }
            }
    }
    
}

struct FurastaView_Previews: PreviewProvider {
    static var previews: some View {
        FurastaView(recipes: recipesData)
    }
}
