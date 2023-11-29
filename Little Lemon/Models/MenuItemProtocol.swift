//
//  MenuItemProtocol.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var ingredient: [Ingredient] { get }
    var ordersCount: Int { get set }
    var category: MenuCategory { get set }
    var price: Int { get set }
}
