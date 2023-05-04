//
//  ListViewModel.swift
//  todoApp
//
//  Created by Kacper Biaduń on 25/04/2023.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [itemModel] = []
    
        
    init() {
        getItems()
    }
    
    func getItems() {
        let newItem = [
            itemModel(title: "This is the first!", isDone: true),
            itemModel(title: "This is second", isDone: false),
            itemModel(title: "Third!", isDone: false)
        ]
        
        items.append(contentsOf: newItem)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = itemModel(title: title, isDone: false)
        items.append(newItem)
    }
    
    func updateItem(item: itemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
}
