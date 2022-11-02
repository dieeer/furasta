//
//  StoryViewModel.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI

class StoryViewModel: ObservableObject {
    
//    list of stories
    @Published var stories: [StoryBundle] = [
        StoryBundle(recipeName: "bolognese", stores: [
        Story(imageURL: "story1"),
        Story(imageURL: "story2"),
        Story(imageURL: "story3")
    ])
    ]
}
