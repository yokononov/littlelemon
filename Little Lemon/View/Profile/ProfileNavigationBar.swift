//
//  ProfileNavigationBar.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct ProfileNavigationBar: View {
    var onDismiss: () -> Void
    var body: some View {
        HStack {
            Button("back", action: {
                onDismiss()
            })
            Spacer()
            Image("littleLemon")
                .resizable()
                .frame(width: 180, height: 44.0)
            Spacer()
            Circle()
        }
    }
}

#Preview {
    ProfileNavigationBar(onDismiss: {})
}
