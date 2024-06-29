//
//  MyList.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import Foundation
import SwiftData

@Model
class MyList {
    var name: String
    var iconColorCode: String // Color HEX Code
    
    init(name: String, iconColorCode: String) {
        self.name = name
        self.iconColorCode = iconColorCode
    }
    
}
