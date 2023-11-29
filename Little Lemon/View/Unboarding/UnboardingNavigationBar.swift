//
//  UnboardingNavigationBar.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct UnboardingNavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Image("littleLemon")
                .resizable()
                .frame(width: 180, height: 44.0)
            Spacer()
        }
    }
}

#Preview {
    UnboardingNavigationBar()
}
