//
//  ItemViewModel.swift
//  MVVM-SwiftUI
//
//  Created by XP India on 30/11/23.
//

import SwiftUI

class ItemViewModel: ObservableObject {
    
    // MARK: - publishes a property
    /// typealias mark with an attribute
    @Published var isTurnedOn = false
    @Published var counter = 0
    @Published var itemList = [Item]()
    
    func increment() {
        counter += 1
    }
    
    func addItem() {
        let rendomItem = ["Playstation", "Xbox", "Nintendo Wii", "Gameboy"]
        let item = rendomItem.randomElement()!
        /// create a new item
        let newItem = Item(name: item, description: "\(itemList.count + 1)")
        
        withAnimation {
            itemList.insert(newItem, at: 0)
        }
    }
}
