//
//  TipsView.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import SwiftUI

struct TipsView: View {
    
    @ObservedObject var model = TipVewModel()
    
    let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    
    
    var body: some View {
        
        VStack {
            
            VStack {
                Text("furasta")
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    ForEach(model.list){item in
                        TipCardView(tip: item)
                            .padding(.horizontal, 5)
                            .padding(.vertical, 5)
                    }
                    
                }
            }.background(Color("ColorAppearanceAdaptive"))
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    init() {
        model.getData()
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
