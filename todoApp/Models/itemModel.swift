//
//  itemModel.swift
//  todoApp
//
//  Created by Kacper Biaduń on 25/04/2023.
//

import Foundation

struct itemModel: Identifiable {
    let id: String
    var title: String
    let isDone: Bool
    
    init(id: String = UUID().uuidString ,title: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
    
    func updateCompletion() -> itemModel {
        return itemModel(id: id, title: title, isDone: !isDone)
    }
}
