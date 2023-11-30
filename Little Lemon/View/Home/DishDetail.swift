//
//  DishDetail.swift
//  Little Lemon
//
//  Created by Sergei on 01.12.2023.
//

import SwiftUI

struct DishDetail: View {
    let dish: Dish
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(dish.title!)
                .font(.title)
                .bold()
            
            HStack {
                Text(dish.category!)
                
                Spacer()
                
                Text(dish.formattedPrice)
            }
            .font(.headline)
            
            HStack {
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
                
                Spacer()
            }
            
            Text(dish.dishDescription!)
            
            Spacer()
        }
        .padding()
    }
}

struct DishDetail_Previews: PreviewProvider {
    static var previews: some View {
        DishDetail(dish: .preview)
    }
}
