//
//  FoodItemView.swift
//  Little Lemon
//
//  Created by Sergei on 04.09.2023.
//

import SwiftUI

struct FoodItemView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Greek Salad")
                .font(.system(size: 26))
                .fontWeight(.semibold)
                .foregroundColor(.black)
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("The famous greek salad of crispy lettuce, peppers, olives and our Chicag...")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .foregroundColor(Color(hex: "495e57"))
                        .lineLimit(2)
                    Spacer()
                    Text("$7.99")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "495e57"))
                }
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .background(Color.red)
                
            }
            .padding(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
            Divider()
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView()
    }
}
