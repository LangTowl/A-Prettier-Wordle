//
//  BoardSpaceView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/9/23.
//

import SwiftUI

struct BoardSpaceView: View {
    
    var board_space: BoardSpace
    
    var body: some View {
        ZStack {
            
            switch board_space.board_state {
            case .correct:
                Circle()
                    .foregroundStyle(.green)
            case .partial:
                Circle()
                    .foregroundStyle(.orange)
            case .wrong:
                Circle()
                    .foregroundStyle(.black)
            case .empty:
                EmptyView()
            }
            
            RoundedRectangle(cornerRadius: 5)
                .background(.ultraThinMaterial)
                .environment(\.colorScheme, .dark)
            
            Text("\(board_space.character)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .bold()
        }
        .frame(width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 6)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(color: .black.opacity(0.5), radius: 1, x: 1, y: 1)
        .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("off_white"), lineWidth: 1)
            )
    }
}

#Preview {
    ContentView()
}
