//
//  OrderCategoryView.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct OrderCategoryView: View {
    var model: String
    var body: some View {
        Text(model)
            .font(.system(size: 20))
            .fontWeight(.bold)
            .foregroundColor(Color(hex: "495e57"))
            .padding(16)
            .background(Color(hex: "edefee"))
            .cornerRadius(16)
            
    }
}

#Preview {
    OrderCategoryView(model: "Starters")
}
