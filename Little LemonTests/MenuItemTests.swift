//
//  MenuItemTests.swift
//  Little LemonTests
//
//  Created by Sergei on 01.03.2023.
//

import XCTest
@testable import Little_Lemon

final class MenuItemTests: XCTestCase {

    func test_thatTitleMenuIsEqualTitle() throws {
        let menuItem: MenuItemProtocol = MockManager.getFoodItems()[0]
        XCTAssertEqual(menuItem.title, "Food 1")
    }
    
    func test_thatInitializationWithIngredientsMenuIsEqualIngredients() throws {
        let menuItem: MenuItemProtocol = MenuItem(title: "testTitle", ingredient: [.Broccoli, .Carrot], ordersCount: 0, category: .Food, price: 0)
        XCTAssertEqual(menuItem.ingredient, [.Broccoli, .Carrot])
    }

}
