//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var model: MenuItemProtocol
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Image("Little Lemon logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 32)
                Text("Price:")
                    .font(.headline)
                Text("\(model.price)")
                Text("Ordered:")
                    .font(.headline)
                Text("\(model.ordersCount)")
                Text("Ingredient:")
                    .font(.headline)
                ForEach(model.ingredient) { item in
                    Text(item.rawValue)
                }
            }
            
        }
        .navigationTitle(model.title)
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(model: MenuItem(title: "Food \(1)", ingredient: (0..<5).map { _ in Ingredient.allCases.randomElement()! }, ordersCount: Int.random(in: 0..<5), category: .Food, price: Int.random(in: 0..<100)))
    }
}
