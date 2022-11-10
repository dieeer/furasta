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
    @State private var showMethodModal: Bool = false
    @State var recipeComplete: Bool = false
    
    let columns = [
        GridItem(.adaptive(minimum: 120))
    ]
    
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
//                    button
                    ZStack(alignment: .bottom) {
                        Button("🍴 start recipe") {
                            showMethodModal = true
                            recipeComplete = true
                        }
                        .modifier(buttonModifier())
                        .sheet(isPresented: $showMethodModal){
                            MethodView(recipe: self.recipe)
                            
                        }
                        
                    }
                    RecipeRatingButton(recipeComplete: $recipeComplete)
//                    tagline
                    Text(recipe.headline)
                        .font(.system(.subheadline, design: .serif))
                    //                    rating
                    RecipeRatingView(recipe: recipe)
                    //                    cooking
                    RecipeCookingView(recipe: recipe)



                    //                    ingredients
                    Text("ingredients")
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .modifier(niceTextModifier())

                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(recipe.ingredients, id: \.self) {
                            item in
                                Text(item)
                                    .font(.system(.body, design: .serif))
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }

                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            }
        }.background(Color("ColorAppearanceAdaptive"))
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
                            .opacity(self.pulsate ? 1 : 0.2)
                        
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

struct buttonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color("ColorAppearanceAdaptive"))
            .font(.system(.title3, design: .serif))
            .fontWeight(.bold)
            .shadow(radius: 3)
            .padding(.vertical)
            .padding(.horizontal, 0)
            .frame(width: 250)
            .background(
                RoundedRectangle(cornerRadius: 64)
                    .fill(Color("ColorGreenAdaptive"))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 4, x: 0, y: 4)
            )
    }
}

struct ratingButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color("ColorAppearanceAdaptive"))
            .font(.system(.title3, design: .serif))
            .fontWeight(.bold)
            .shadow(radius: 3)
            .padding(.vertical)
            .padding(.horizontal, 0)
            .frame(width: 150)
            .background(
                RoundedRectangle(cornerRadius: 64)
                    .fill(Color("ColorHeaderAdaptive"))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 4, x: 0, y: 4)
            )
    }
}

struct ratingButtonDisabledModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color("ColorAppearanceAdaptive"))
            .font(.system(.title3, design: .serif))
            .fontWeight(.bold)
            .shadow(radius: 3)
            .padding(.vertical)
            .padding(.horizontal, 0)
            .frame(width: 150)
            .background(
                RoundedRectangle(cornerRadius: 64)
                    .fill(Color.gray)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 4, x: 0, y: 4)
            )
    }
}

struct niceTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .shadow(radius: 2)
            .padding()
            .foregroundColor(Color("ColorTextAdaptive"))
    }
}


