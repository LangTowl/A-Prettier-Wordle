//
//  BoardView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/9/23.
//

import SwiftUI

struct BoardView: View {
    
    @EnvironmentObject var global_variables: GlobalVariables
    @State var shake: Bool = false
    
    var body: some View {
        VStack {
            ForEach(0...5, id: \.self) { i in
                HStack {
                    ForEach(0...4, id: \.self) { j in
                        BoardSpaceView(board_space: global_variables.board[i][j])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
