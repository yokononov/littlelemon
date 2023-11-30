//
//  DishListItem.swift
//  Little Lemon
//
//  Created by Sergei on 01.12.2023.
//

import SwiftUI

struct DishListItem: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(dish.title!)
                    .font(.headline)
                
                Text(dish.category!)
                    .font(.subheadline)
                
                Text(dish.formattedPrice)
                    .padding(.top)
            }
            
            Spacer()
            
            AsyncImage(url: dish.imageUrl) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .frame(width: 320, height: 200)
                } else if phase.error != nil {
                    Image(systemName: "xmark.icloud")
                        .frame(width: 320, height: 200)
                        .imageScale(.large)
                        .foregroundColor(.red)
                        .border(.red, width: 2)
                } else {
                    ProgressView()
                        .frame(width: 320, height: 200)
                        .border(.secondary, width: 2)
                }
            }
            .padding(.vertical)
        }
    }
}

extension Dish {
    var formattedPrice: String {
        String(format: "%.2f $", price)
    }
}

struct DishListItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                NavigationLink {
                    DishDetail(dish: .preview)
                } label: {
                    DishListItem(dish: .preview)
                }
            }
            .listStyle(.plain)
        }
    }
}
