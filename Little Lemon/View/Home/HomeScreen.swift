//
//  HomeScreen.swift
//  Little Lemon
//
//  Created by Sergei on 04.09.2023.
//

import SwiftUI

struct HomeScreen: View {
    @State private var buttonTapped = false
    
    var body: some View {
        
        NavigationView { // <1>
            VStack(alignment: .center, spacing: 0) {
                HomeHeroView()
                HomeMenuBreakdown()
                Divider()
                ScrollView {
                    ForEach(0...10, id: \.self) { index in
                        FoodItemView()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) { // <3>
                        HomeNavigationBar(inPresentedScreen: {
                            self.buttonTapped = true
                        })
                    }
                }
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
            .background(
                NavigationLink(destination: ProfileView(), isActive: $buttonTapped) {
                    EmptyView()
                }
            )
        }
        .navigationBarHidden(true)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
