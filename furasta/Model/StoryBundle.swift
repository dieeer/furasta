//
//  StoryBundle.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import SwiftUI

struct StoryBundle: Identifiable{
    var id = UUID().uuidString
    var recipeName: String
    var isSeen: Bool = false
    var stores: [Story]
}

struct Story: Identifiable{
    var id = UUID().uuidString
    var imageURL: String
}
