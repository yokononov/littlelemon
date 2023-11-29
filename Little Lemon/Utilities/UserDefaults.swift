//
//  UserDefaults.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import Foundation

class UserDefaultHelper {
    
    static var isLogin: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "isLogin")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "isLogin")
        }
    }
}
