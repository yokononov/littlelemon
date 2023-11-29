//
//  HomeNavigationBar.swift
//  Little Lemon
//
//  Created by Sergei on 04.09.2023.
//

import SwiftUI

struct HomeNavigationBar: View {
    
    @State var isLinkActive = true
    var inPresentedScreen: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            
//            NavigationLink(destination: ProfileView()) {
//                Button(action: {
//                    inPresentedScreen()
//                }, label: {
                    Image("littleLemon")
                        .resizable()
                        .frame(width: 180, height: 44.0)
//                })
//        }

            
//            NavigationLink(destination: ProfileView(), isActive: $isLinkActive) {
//                Button(action: {
//                    
//                }, label: {
//                    Image("littleLemon")
//                        .resizable()
//                        .frame(width: 180, height: 44.0)
//                })
//            }
            
            
            Spacer()
            NavigationLink(destination: ProfileView()) {
                Button(action: {
                    inPresentedScreen()
                }, label: {
                    Circle()
                })
            }
        }
    }
}

struct HomeNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationBar(inPresentedScreen: {})
    }
}
