//
//  ModifierButtonView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/9/23.
//

import SwiftUI

struct ModifierButtonView: View {
    
    var button: ModifierKey
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .background(.ultraThinMaterial)
                .environment(\.colorScheme, .dark)
            
            Image(systemName: button.icon)
                .font(.title3)
                .foregroundStyle(.white)
        }
        .frame(width: UIScreen.main.bounds.width / 3.1, height: UIScreen.main.bounds.width / 10)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(color: .black.opacity(0.5), radius: 1, x: 1, y: 1)
        .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("off_white"), lineWidth: 1)
            )
    }
}

#Preview {
    KeyboardView()
}
