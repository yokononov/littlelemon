//
//  RegistrationViewModel.swift
//  Little Lemon
//
//  Created by Sergei on 01.12.2023.
//

import Foundation

struct Creds: Equatable {
    var firstName = ""
    var lastName = ""
    var email = ""
    
    var isValid: Bool {
        !firstName.isEmpty &&
        !lastName.isEmpty &&
        email.wholeMatch(of: Creds.emailRegex) != nil
    }
    
    private static let emailRegex = try! Regex("^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$")
}


class RegistrationViewModel: ObservableObject {
    let store: UserDefaults
    
    @Published var loginData: Creds
    
    @Published private(set) var isLoggedIn: Bool
    
    private enum Keys: String {
        case firstName = "firstName"
        case lastName = "lastName"
        case email = "email"
        case isLoggedIn = "isLoggedIn"
    }
    
    init(store: UserDefaults = UserDefaults.standard) {
        self.store = store
        self.loginData = Creds(
            firstName: store.string(forKey: Keys.firstName.rawValue) ?? "",
            lastName: store.string(forKey: Keys.lastName.rawValue) ?? "",
            email: store.string(forKey: Keys.email.rawValue) ?? ""
        )
        self.isLoggedIn = store.bool(forKey: Keys.isLoggedIn.rawValue)
    }
    
    func onLogin() {
        assert(loginData.isValid)
        isLoggedIn = true
        saveChanges()
    }

    func onLogout() {
        assert(isLoggedIn)
        loginData = Creds()
        isLoggedIn = false
        saveChanges()
    }
    
    func saveChanges() {
        store.set(loginData.firstName, forKey: Keys.firstName.rawValue)
        store.set(loginData.lastName, forKey: Keys.lastName.rawValue)
        store.set(loginData.email, forKey: Keys.email.rawValue)
        store.set(isLoggedIn, forKey: Keys.isLoggedIn.rawValue)
    }
}
