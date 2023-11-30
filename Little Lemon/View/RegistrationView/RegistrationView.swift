//
//  RegistrationView.swift
//  Little Lemon
//
//  Created by Sergei on 01.12.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @EnvironmentObject private var loginViewModel: RegistrationViewModel
    
    var body: some View {
            VStack(spacing: 24) {
                HStack {
                    Text("Create Account")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("First name*")
                        .padding(.horizontal)

                    TextField("Enter your first name", text: $loginViewModel.loginData.firstName)
                        .textFieldStyle(.roundedBorder)
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Last name*")
                        .padding(.horizontal)

                    TextField("Enter your Last name", text: $loginViewModel.loginData.lastName)
                        .textFieldStyle(.roundedBorder)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Email*")
                        .padding(.horizontal)

                    TextField("nter your email", text: $loginViewModel.loginData.email)
                        .textFieldStyle(.roundedBorder)
                }
                Button("Submit") {
                    loginViewModel.onLogin()
                }
                .padding(.top)
                .disabled(!loginViewModel.loginData.isValid)
            }
            .padding()
    }
}

#Preview {
    RegistrationView()
        .environmentObject(RegistrationViewModel())
}
