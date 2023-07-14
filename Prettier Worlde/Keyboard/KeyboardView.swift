//
//  KeyboardView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/8/23.
//

import SwiftUI

struct KeyboardView: View {
    
    @EnvironmentObject var global_variables: GlobalVariables
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(0...(row_one.count - 1), id: \.self) { i in
                    Button {
                        switch global_variables.column {
                        case 5:
                            global_variables.column += 0
                        default:
                            withAnimation {
                                global_variables.board[global_variables.row][global_variables.column].character = row_one[i].character
                                global_variables.column += 1
                            }
                        }
                    } label: {
                        KeyButtonView(character: row_one[i])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            
            HStack {
                ForEach(0...(row_two.count - 1), id: \.self) { i in
                    Button {
                        switch global_variables.column {
                        case 5:
                            global_variables.column += 0
                        default:
                            withAnimation {
                                global_variables.board[global_variables.row][global_variables.column].character = row_two[i].character
                                global_variables.column += 1
                            }
                        }
                    } label: {
                        KeyButtonView(character: row_two[i])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            
            HStack {
                ForEach(0...(row_three.count - 1), id: \.self) { i in
                    Button {
                        switch global_variables.column {
                        case 5:
                            global_variables.column += 0
                        default:
                            withAnimation {
                                global_variables.board[global_variables.row][global_variables.column].character = row_three[i].character
                                global_variables.column += 1
                            }
                        }
                    } label: {
                        KeyButtonView(character: row_three[i])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            
            HStack {
                Button {
                    if global_variables.column == 5 {
                        
                        update_guess(board_state: global_variables)
                        update_guess_for_modifier(board_state: global_variables)
                        
                        if is_real_word(guess: global_variables.guess) == true {
                            
                            update_board(board_state: global_variables)
                            
                            global_variables.row += 1
                            global_variables.column = 0
                        }
                    }
                } label: {
                    ModifierButtonView(button: row_four[0])
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {
                    if global_variables.column != 0 {
                        update_guess_for_modifier(board_state: global_variables)
                        global_variables.column -= 1
                    }
                    
                    row_four[0].key_state = .empty
                    
                    global_variables.board[global_variables.row][global_variables.column].character = ""
                } label: {
                    ModifierButtonView(button: row_four[1])
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    ContentView()
}
