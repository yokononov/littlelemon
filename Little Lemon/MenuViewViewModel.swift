//
//  MenuViewViewModel.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foods: [MenuItem]
    @Published var drinks: [MenuItem]
    @Published var deserts: [MenuItem]
    
    private var fullfoods: [MenuItem]
    private var fulldrinks: [MenuItem]
    private var fulldeserts: [MenuItem]
    
    init() {
        self.foods = MockManager.getFoodItems()
        self.drinks = MockManager.getDrinkItems()
        self.deserts = MockManager.getDesertItems()
        self.fullfoods = MockManager.getFoodItems()
        self.fulldrinks = MockManager.getDrinkItems()
        self.fulldeserts = MockManager.getDesertItems()
    }
    private var currentCategory: MenuCategory?
    func setFilter(item: MenuCategory) {
        if currentCategory == item {
            drinks = fulldrinks
            deserts = fulldeserts
            foods = fullfoods
            return
        }
        switch item {
        case .Food:
            drinks = fulldrinks.filter({ $0.category == .Food })
            deserts = fulldeserts.filter({ $0.category == .Food })
            foods = fullfoods.filter({ $0.category == .Food })
        case .Drink:
            drinks = fulldrinks.filter({ $0.category == .Drink })
            deserts = fulldeserts.filter({ $0.category == .Drink })
            foods = fullfoods.filter({ $0.category == .Drink })
        case .Dessert:
            drinks = fulldrinks.filter({ $0.category == .Dessert })
            deserts = fulldeserts.filter({ $0.category == .Dessert })
            foods = fullfoods.filter({ $0.category == .Dessert })
        }
        self.currentCategory = item
    }
    
    func setSort(item: SortEnum) {
        switch item {
        case .byName:
            foods.sort(by: { $0.title < $1.title })
            drinks.sort(by: { $0.title < $1.title })
            deserts.sort(by: { $0.title < $1.title })
        case .popular:
            foods.sort(by: { $0.ordersCount > $1.ordersCount })
            drinks.sort(by: { $0.ordersCount > $1.ordersCount })
            deserts.sort(by: { $0.ordersCount > $1.ordersCount })
        case .byPrice:
            foods.sort(by: { $0.price < $1.price })
            drinks.sort(by: { $0.price < $1.price })
            deserts.sort(by: { $0.price < $1.price })
        }
    }
}
