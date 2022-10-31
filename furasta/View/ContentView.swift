//
//  ContentView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct ContentView: View {
    //    properties
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData

    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //                header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, -20.0/*@END_MENU_TOKEN@*/)
                
                //                dishes view
                Text("dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
//                facts view
                
                Text("facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) {
                            item in FactsView(fact: item)
                        }
                    }
                    
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
//                recipe cards
                
          
                
                //                footer
                VStack(alignment: .center, spacing: 20) {
                    Text("all about avocados?")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("i'm only using avocados as i'm being forced to for this tutorial")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
            }.frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
        }
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(headers: headersData, facts: factsData)
        }
    }

