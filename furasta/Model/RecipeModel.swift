//
//  RecipeModel.swift
//  furasta
//
//  Created by justin on 30/10/2022.
//

import SwiftUI

//recipe model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
