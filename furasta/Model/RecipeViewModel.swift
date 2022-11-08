//
//  RecipeViewModel.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import Foundation
import FirebaseFirestore

class RecipeViewModel: ObservableObject {
    
    @Published var list = [Recipe]()
    
    func getData() {
        
        let db = Firestore.firestore()
        
        db.collection("recipes").getDocuments { snapshot, error in
            
            
//            error handling
            if error == nil {
                
//                no error
                
                if let snapshot = snapshot {
                    
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { r in
                            return Recipe(id: r.documentID,
                                          title: r["title"] as? String ?? "",
                                          headline: r["headline"] as? String ?? "",
                                          image: r["image"] as? String ?? "",
                                          rating: r["rating"] as? Int ?? 0,
                                          serves: r["serves"] as? Int ?? 0,
                                          preparation: r["preparation"] as? Int ?? 0,
                                          cooking: r["cooking"] as? Int ?? 0,
                                          instructions: r["instructions"] as? [String] ?? [],
                                          ingredients: r["ingredients"] as? [String] ?? [])
                        }
                    }
                    }
                   
            }
            else {
//                actual handling
            }
        }
    }
    
    
}
