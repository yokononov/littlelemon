//
//  UnboardingView.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct UnboardingView: View {
    @State private var nameText = ""
    @State private var emailText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    UnboardingHeroView()
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar { // <2>
                            ToolbarItem(placement: .principal) { // <3>
                                UnboardingNavigationBar()
                            }
                        }
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Name*")
                            .foregroundColor(Color(hex: "959595"))
                            .fontWeight(.semibold)
                            .font(Font.system(size: 20))
                        TextField("", text: $nameText)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .font(.system(size: 16))
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
                            )
                            .textFieldStyle(DefaultTextFieldStyle())
                        Text("Email*")
                            .foregroundColor(Color(hex: "959595"))
                            .fontWeight(.semibold)
                            .font(Font.system(size: 20))
                        TextField("", text: $emailText)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .font(.system(size: 16))
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
                            )
                            .textFieldStyle(DefaultTextFieldStyle())
                        
//                         {
                        NavigationLink(destination: {
                        
                            HomeScreen()
                            
                        }, label: {
                            
                            Button("Press me", action: {
                                UserDefaultHelper.isLogin = true
                            })
                            
                                .foregroundColor(.white)  // Set the modifiers to your liking.
                            
                                .padding(.vertical)
                            
                                .padding(.horizontal, 50)
                            
                                .background(.blue)
                            
                                .cornerRadius(10)
                            
                        })
                        //                        }
                    })
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    UnboardingView()
}
