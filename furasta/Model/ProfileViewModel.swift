//
//  ProfileViewModel.swift
//  furasta
//
//  Created by justin on 09/11/2022.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class ProfileViewModel: ObservableObject {
    
    @Published var list = [Profile]()
    
    func getData() {
        
        let db = Firestore.firestore()
        
        db.collection("users").getDocuments { snapshot, error in
            
            if error == nil {
                
                if let snapshot = snapshot {
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { p in
                            return Profile(id: p.documentID,
                                          displayName: p["displayName"] as? String ?? "",
                                           imageURL: p["imageURL"] as? String ?? "",
                                           UID: p["UID"] as? String ?? "",
                                           completedRecipes: p["completedRecipes"] as? [String] ?? []
                            )
                        }
                    }
                }
            }
        }
    }
    
    
}


/////var displayName: String
//var imageURL: String
//var UID: String
//var completedRecipes: String
