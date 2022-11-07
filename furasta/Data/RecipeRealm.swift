//
//  RecipeRealm.swift
//  furasta
//
//
//

import Foundation
import RealmSwift

class RecipeObj: Object {
        var title: String?
        var headline: String?
        var image: String?
        var rating: Int?
        var serves: Int?
        var preparation: Int?
        var cooking: [String] = []
        var instructions: [String] = []
}
