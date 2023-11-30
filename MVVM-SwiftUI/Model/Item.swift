//
//  Item.swift
//  MVVM-SwiftUI
//
//  Created by XP India on 30/11/23.
//

import Foundation

struct Item: Codable, Identifiable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
}
