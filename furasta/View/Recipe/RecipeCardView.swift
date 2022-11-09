//
//  RecipeCardView.swift
//  furasta
//
//  Created by justin on 30/10/2022.
//

import SwiftUI


struct RecipeCardView: View {
//    properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false

    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .overlay(
                        HStack {
                            Spacer()
                            VStack {
                                Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                                Spacer()
                            }
                        }
                )
            VStack(alignment: .leading, spacing: 12){
//                title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .lineLimit(1)
//                headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
//                rates
                RecipeCookingView(recipe: recipe)
//
                
            }
            .padding()
            .padding(.bottom, 0)
            
        }
        .background(Color("ColorComponentAdaptive"))
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal){
            RecipeDetailView(recipe: self.recipe)
            
        }
                
        
    }
}

