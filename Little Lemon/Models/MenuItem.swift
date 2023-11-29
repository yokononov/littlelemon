//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {
    var id: UUID = UUID()
    var title: String
    var ingredient: [Ingredient]
    var ordersCount: Int
    var category: MenuCategory
    var price: Int
}
