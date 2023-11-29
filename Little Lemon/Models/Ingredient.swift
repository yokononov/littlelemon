//
//  Ingredient.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

enum Ingredient: String, CaseIterable {
    case Spinach
    case Broccoli
    case Carrot
    case Pasta
    case TomatoSauce = "Tomato sauce"
}

extension Ingredient: Identifiable {
  var id: Self { self }
}
