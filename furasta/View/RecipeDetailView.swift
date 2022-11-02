//
//  RecipeDetailView.swift
//  furasta
//
//  Created by justin on 30/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    //    properties
    
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    //                    title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
//                    tagline
                    Text(recipe.headline)
                    //                    rating
                    RecipeRatingView(recipe: recipe)
                    //                    cooking
                    RecipeCookingView(recipe: recipe)
                  
                    Button("start recipe") {

                    }.modifier(buttonModifier())



                    //                    ingredients
                    Text("ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) {
                            item in
                            VStack(alignment: .leading, spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        //                action
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                        
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear() {
            self.pulsate.toggle()
                
        }

    
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
    
}

struct buttonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .font(.system(.title3))
            .fontWeight(.bold)
            .shadow(radius: 3)
            .padding(.vertical)
            .padding(.horizontal, 0)
            .frame(width: 250)
            .background(
                RoundedRectangle(cornerRadius: 64)
                    .fill(Color("ColorGreenMedium"))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
            )
    }
}
