//
//  MenuCategory.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

enum MenuCategory: String {
    case Food
    case Drink
    case Dessert
}

extension MenuCategory: Identifiable {
  var id: Self { self }
}

enum SortEnum: String {
    case byName = "A-Z"
    case popular = "Most Popular"
    case byPrice = "Price $-$$$"
}

extension SortEnum: Identifiable {
  var id: Self { self }
}
