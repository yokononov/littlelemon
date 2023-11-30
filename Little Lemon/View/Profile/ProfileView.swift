//
//  ProfileView.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var emailText = ""
    @State private var isOn = false
    @EnvironmentObject private var loginViewModel: RegistrationViewModel
    @State private var loginData = Creds()
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    Text("Personal Information")
                    Text("Avatar")
                    HStack {
                        Rectangle()
                            .frame(width: 50, height: 50, alignment: .center)
                        Button("Change", action: {
                            
                        })
                        Button("Remove", action: {
                            
                        })
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("First name")
                            .foregroundColor(Color(hex: "959595"))
                            .fontWeight(.semibold)
                            .font(Font.system(size: 14))
                        
                        TextField("", text: $loginData.firstName)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .font(.system(size: 16))
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
                            )
                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        Text("Last name")
                            .foregroundColor(Color(hex: "959595"))
                            .fontWeight(.semibold)
                            .font(Font.system(size: 14))
                        TextField("", text: $loginData.lastName)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .font(.system(size: 16))
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
                            )
                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        Text("Email")
                            .foregroundColor(Color(hex: "959595"))
                            .fontWeight(.semibold)
                            .font(Font.system(size: 14))
                        TextField("", text: $loginData.email)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .font(.system(size: 16))
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
                            )
                            .textFieldStyle(DefaultTextFieldStyle())
                        
//                        Text("Phone")
//                            .foregroundColor(Color(hex: "959595"))
//                            .fontWeight(.semibold)
//                            .font(Font.system(size: 14))
//                        TextField("Enter your score", value: $emailText, formatter: formatter)
//                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
//                            .font(.system(size: 16))
//                            .background(
//                                RoundedRectangle(cornerRadius: 6)
//                                    .stroke(Color(#colorLiteral(red: 0.7803921569, green: 0.7843137255, blue: 0.8235294118, alpha: 1)), lineWidth: 2)
//                            )
//                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        Text("Personal Information")
                        
                        CheckboxView(title: "Order statuses")
                        
                        CheckboxView(title: "Password changes")
                        
                        CheckboxView(title: "Special offers")
                        
                        CheckboxView(title: "Newsletter")
                        
                            
                    }
                    
                    Button("Log Out", action: {
                        loginViewModel.onLogout()
                                }).buttonStyle(BorderedButtonStyle())
                    
                    HStack {
                        Button("Discard changes", action: {
                                    }).buttonStyle(BorderedButtonStyle())
                        
                        Button("Save changes", action: {
                                    }).buttonStyle(BorderedButtonStyle())
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        ProfileNavigationBar {
//                            self.buttonTapped = true
                        }
                    }
                }
                .background(
                    NavigationLink(destination: HomeScreen(), isActive: .constant(false)) {
                        EmptyView()
                    }
                )
            }
        }
        .onAppear {
            loginData = loginViewModel.loginData
        }
        
        .navigationBarHidden(true)
    }
    private func onCancel() {
        loginData = loginViewModel.loginData
    }
    
    private func onSave() {
        loginViewModel.loginData = loginData
        loginViewModel.saveChanges()
    }
}

#Preview {
    ProfileView()
}
