//
//  SubmissionFunctions.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/11/23.
//

import Foundation
import SwiftUI

func update_guess(board_state: GlobalVariables) {
    
    board_state.guess = ""
    
    for i in 0...4 {
        board_state.guess.append(board_state.board[board_state.row][i].character)
    }
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

func update_board(board_state: GlobalVariables) {
    for i in 0...4 {
        var temp_state: BoardState = .empty
        for j in 0...4 {
            if String(board_state.guess[i]) == String(board_state.todays_word[j]) {
                if i == j {
                    temp_state = .correct
                    break
                }
                
                temp_state = .partial
                break
            }
        }
        
        if temp_state == .empty {
            temp_state = .wrong
        }
        
        withAnimation {
            board_state.board[board_state.row][i].board_state = temp_state
        }
    }
}

func update_keyboard(board_state: GlobalVariables) {
    
}

func illegal_guess(board_state: GlobalVariables) {
    for i in 0...4 {
        board_state.board[board_state.row][i].board_state = .wrong
        board_state.board[board_state.row][i].board_state = .empty
        board_state.board[board_state.row][i].board_state = .wrong
        board_state.board[board_state.row][i].board_state = .empty
    }
}
