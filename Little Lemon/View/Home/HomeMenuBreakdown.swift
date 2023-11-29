//
//  HomeMenuBreakdown.swift
//  Little Lemon
//
//  Created by Sergei on 04.09.2023.
//

import SwiftUI

struct HomeMenuBreakdown: View {
    private var columns: [GridItem] = [
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Order for Delivery")
                .multilineTextAlignment(.leading)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: columns, content: {
                    ForEach(11...20, id: \.self) { index in
                        OrderCategoryView(model: "test \(index)")
                    }
                })
            }
        }
    }
}

struct HomeMenuBreakdown_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenuBreakdown()
    }
}
