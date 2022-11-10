//
//  FurastaView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct FurastaView: View {
    //    MARK: - PROPERTIES
    @ObservedObject var model = RecipeViewModel()
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 5) {
                
                Text("furasta")
                    .font(.system(.title, design:.serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            ScrollView{
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("recipes")
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.leading, 10)
                        .modifier(niceTextModifier())
                    
                    VStack(alignment: .center, spacing: 20){
                        ForEach(model.list) {
                            item in
                            RecipeCardView(recipe: item)
                        }
                    }
                    .frame(maxWidth: 640)
                    .padding(.horizontal)
                    
                }
            }
            
            
        }.background(Color("ColorAppearanceAdaptive"))
    
    }
    init() {
        model.getData()
    }
}

struct FurastaView_Previews: PreviewProvider {
    static var previews: some View {
        FurastaView()
    }
}
