//
//  todoAppApp.swift
//  todoApp
//
//  Created by Kacper Biaduń on 23/04/2023.
//

import SwiftUI

@main
struct todoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
