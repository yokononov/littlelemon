//
//  CheckboxView.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct CheckboxView: View {
    @State private var isOn = false
    var title: String
    var body: some View {
        Toggle(isOn: $isOn) {
            Text(title)
                .foregroundColor(Color(hex: "3a3a51"))
                .fontWeight(.medium)
                .font(Font.system(size: 14))
        }
        .foregroundColor(Color(hex: "495e57"))
        .toggleStyle(iOSCheckboxToggleStyle())

    }
}

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 20, height: 20)

                configuration.label
            }
        })
    }
}

#Preview {
    CheckboxView(title: "test")
}
