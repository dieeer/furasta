//
//  StoryView.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI

struct StoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
