//
//  TipsViewModel.swift
//  furasta
//
//  Created by justin on 08/11/2022.
//

import Foundation
import FirebaseFirestore

class TipVewModel: ObservableObject {
    
    @Published var list = [Tip]()
    
    func getData(){
        
        let db = Firestore.firestore()
        
        db.collection("tips").order(by: "name").getDocuments { snapshot, error in
            
            //        error handler
            if error == nil {
                
                if let snapshot = snapshot {
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { t in
                            return Tip(
                                id: t.documentID,
                               name: t["name"] as? String ?? "",
                               explanation: t["explanation"] as? String ?? "",
                               image: t["image"] as? String ?? ""
                            )
                        }
                    }
                }
            }
            else {
//                actually handles nothing
            }
        }
    }
}
