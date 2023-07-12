//
//  KeyButtonView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/8/23.
//

import SwiftUI

struct KeyButtonView: View {
    
    var character: Key
    
    var color_state: Color {
        switch character.key_state {
        case .correct:
            Color(.green)
        case .partial:
            Color(.orange)
        case .wrong:
            Color(.gray)
        case .empty:
            Color(.clear)
        }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color_state)
            
            RoundedRectangle(cornerRadius: 5)
                .background(.ultraThinMaterial)
                .environment(\.colorScheme, .dark)
            
            Text(character.character)
                .font(.title3)
                .foregroundStyle(.white)
        }
        .frame(width: UIScreen.main.bounds.width / 13, height: UIScreen.main.bounds.width / 10)
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
//    KeyButtonView(character: "a")
}
