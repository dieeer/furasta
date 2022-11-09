//
//  ProfileViewModel.swift
//  furasta
//
//  Created by justin on 09/11/2022.
//

import Foundation

struct Profile: Identifiable, Codable {
    var id: String
    var displayName: String
    var imageURL: String
    var UID: String
    var completedRecipes: [String]
}
