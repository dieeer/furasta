//
//  TipCardView.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import SwiftUI

struct TipCardView: View {
//    properties
    
    
    var tip: Tip
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            //                title
            Text(tip.name)
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorTextAdaptive"))
                .lineLimit(1)
            
        }
        
        .padding()
        .padding(.bottom, 0)
        .frame(maxWidth: .infinity)
        
        .background(Color("ColorComponentAdaptive"))
        .cornerRadius(12)
        .shadow(color: Color("ColorAppearanceAdaptive"), radius: 4, x: 0, y: 4)
    }
}

struct TipCardView_Previews: PreviewProvider {
    
    @State static var mockTip = Tip(id: "1", name: "test", explanation: "test")
    
    
    static var previews: some View {
        TipCardView(tip: mockTip)
    }
}
