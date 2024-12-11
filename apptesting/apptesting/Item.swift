//
//  Item.swift
//  apptesting
//
//  Created by GOPAL BHUVA on 09/06/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
