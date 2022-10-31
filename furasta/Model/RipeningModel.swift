//
//  RipeningModel.swift
//  furasta
//
//  Created by justin on 31/10/2022.
//

import SwiftUI

//ripening model

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
