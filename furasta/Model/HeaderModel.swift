//
//  HeaderModel.swift
//  furasta
//
//  Created by justin on 29/10/2022.
//

import Foundation
import SwiftUI

//HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subHeadline: String
}
