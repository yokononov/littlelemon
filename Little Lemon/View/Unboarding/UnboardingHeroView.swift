//
//  UnboardingHeroView.swift
//  Little Lemon
//
//  Created by Sergei on 02.10.2023.
//

import SwiftUI

struct UnboardingHeroView: View {
    var body: some View {
        ZStack {
            Color(hex: "495e57")
            VStack(alignment: .leading, spacing: 0) {
                Text("Little Lemon")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                    .foregroundColor(.yellow)
                
                HStack(alignment: .center)  {
                    VStack(alignment: .leading) {
                        Text("Chicago")
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 36))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("We are a family woned Mediterranean restaurant, fucused on traditional recipes served with a modern twist")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image(systemName: "trash")
                        .frame(width: 100, height: 100)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 16, trailing: 16))
        }
    }
}

#Preview {
    UnboardingHeroView()
}
