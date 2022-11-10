//
//  User.swift
//  furasta
//
//  Created by justin on 09/11/2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let fullname: String
    @DocumentID var id: String?
    var stats: UserStats?
    var bio: String?
    
    var isCurrentUser: Bool { return LoginViewModel.shared.userSession?.uid == id }
}

struct UserStats: Decodable {
    var dishesCooked: Int
    var posts: Int
    var followers: Int
}
