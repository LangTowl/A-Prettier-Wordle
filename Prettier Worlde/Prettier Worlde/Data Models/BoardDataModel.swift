//
//  BoardDataModel.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/9/23.
//

import Foundation
import SwiftUI

enum BoardState: String {
    case correct
    case partial
    case wrong
    case empty
}

struct BoardSpace: Identifiable {
    var id = UUID()
    var character: String
    var board_state: BoardState
}

class GlobalVariables: ObservableObject {
    @Published var row: Int = 0
    @Published var column: Int = 0
    @Published var guess: String = ""
    @Published var todays_word: String = ""
    @Published var board: [[BoardSpace]] = [
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
        [BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty), BoardSpace(character: "", board_state: .empty)],
    ]
}
