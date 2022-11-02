//
//  DB_Manager.swift
//  furasta
//
//  Created by justin on 02/11/2022.
//

import Foundation
import SQLite

class DB_Manager {
    
//    sqlite instance
    private var db: Connection!
    
    private var recipes: Table!
    
    private var id: Expression<Int64>!
    private var title: Expression<String>!
    private var headline: Expression<String>!
    private var image: Expression<String>!
    private var rating: Expression<Int64>!
    private var serves: Expression<Int64>!
    private var preparation: Expression<Int64>!
    private var cooking: Expression<Int64>!
    private var instructions: [Expression<String>]!
    private var ingredients: [Expression<String>]!
    
    
    init() {
        
        do {
            
            let path: String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
//            create table object
            recipes = Table("recipes")
            
//            creating columns
             id = Expression<Int64>("id")
             title = Expression<String>("title")
             headline = Expression<String>("headline")
             image = Expression<String>("image")
             rating = Expression<Int64>("rating")
             serves = Expression<Int64>("serves")
             preparation = Expression<Int64>("preparation")
             cooking = Expression<Int64>("cooking")
             instructions = [Expression<String>]("instructions")
             ingredients = [Expression<String>]("ingredients")
            
//            check if db exists
            
            if (!UserDefaults.standard.bool(forKey: "is_db_created")) {
                try db.run(users.create { (t) in
                    t.column(id, PrimaryKey: true)
                    t.column(title)
                    t.column(headline)
                    t.column(image)
                    t.column(rating)
                    t.column(serves)
                    t.column(preparation)
                    t.column(cooking)
                    t.column(instructions)
                    t.column(ingredients)
                })
                
// sets to true if created
                UserDefaults.standard.set(true, forKey: "is_db_created")
            }
        }
        catch {
//            error handling
            print(error.localizedDescription)
        }
    }
    
}
