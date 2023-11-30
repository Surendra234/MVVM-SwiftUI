//
//  ContentView.swift
//  MVVM-SwiftUI
//
//  Created by XP India on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    
    /// create an instance of view-model
    @StateObject var viewModel = ItemViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle switch", isOn: $viewModel.isTurnedOn)
                .padding()
            
            HStack {
                Button("Increment") {
                    viewModel.increment()
                }
                Text("\(viewModel.counter)")
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
            }
            List(viewModel.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            Button("Add Item") {
                viewModel.addItem()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
