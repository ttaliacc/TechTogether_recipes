//
//  FoodRecipesApp.swift
//  FoodRecipes
//
//  Created by Carly Wenig on 10/29/22.
//

import SwiftUI

@main
struct FoodRecipesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            viewController() persistenceController.container.viewContext)
        }
    }
}
