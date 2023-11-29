//
//  MockManager.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

class MockManager {
    
    static func getFoodItems() -> [MenuItem] {
        var foodItem: [MenuItem] = []
        for item in 1..<13 {
            foodItem.append(MenuItem(title: "Food \(item)", ingredient: (0..<5).map { _ in Ingredient.allCases.randomElement()! }, ordersCount: Int.random(in: 0..<5), category: .Food, price: Int.random(in: 0..<100)))
        }
        return foodItem
    }
    
    static func getDrinkItems() -> [MenuItem] {
        var foodItem: [MenuItem] = []
        for item in 1..<9 {
            foodItem.append(MenuItem(title: "Drink \(item)", ingredient: (0..<5).map { _ in Ingredient.allCases.randomElement()! }, ordersCount: Int.random(in: 0..<5), category: .Drink, price: Int.random(in: 0..<100)))
        }
        return foodItem
    }
    
    static func getDesertItems() -> [MenuItem] {
        var foodItem: [MenuItem] = []
        for item in 1..<5 {
            foodItem.append(MenuItem(title: "Desert \(item)", ingredient: (0..<5).map { _ in Ingredient.allCases.randomElement()! }, ordersCount: Int.random(in: 0..<5), category: .Dessert, price: Int.random(in: 0..<100)))
        }
        return foodItem
    }
}
