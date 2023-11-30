//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var model: MenuItem
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
                Text("\(model.price)")
                Text("Ingredient:")
                    .font(.headline)
            }
            
        }
        .navigationTitle(model.title)
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(model: MenuItem(title: "", description: "", price: "", image: "", category: ""))
    }
}
