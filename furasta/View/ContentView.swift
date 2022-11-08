//
//  ContentView.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import SwiftUI

struct ContentView: View {
    //    properties
    
    

    
    
    var body: some View {
    }
    
    init(){
        model.getData()
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
            ContentView()
        }
    }

