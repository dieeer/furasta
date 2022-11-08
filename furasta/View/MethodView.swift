//
//  MethodView.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI
import SnapToScroll

struct MethodView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var recipe: Recipe
    
    var body: some View {
        
        
        
        HStackSnap(alignment: .center(32)) {
            ForEach(recipe.instructions, id: \.self) { item in
                VStack(alignment: .center) {
                    Text(item)
                        .font(.system(.title, design: .serif))
                        .padding(.all)
                        .foregroundColor(Color("ColorTextAdaptive"))
                }
                    .snapAlignmentHelper(id: item)
                    .cornerRadius(12)
                    .shadow(color: Color("ColorAppearanceAdaptive"), radius: 12)
                    
            }.frame(maxWidth: 400, maxHeight: .infinity)
                .background(Color("ColorAppearanceAdaptive"))
        }.overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        //                action
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color("ColorTextAdaptive"))
                            .shadow(radius: 4)
                        
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
            
        )
    }
    
   
}
