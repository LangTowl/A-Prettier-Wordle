//
//  WinView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/14/23.
//

import SwiftUI

struct WinView: View {
    
    let width: Double = UIScreen.main.bounds.width
    let height: Double = UIScreen.main.bounds.height
    
    @EnvironmentObject var global_variables: GlobalVariables
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Text("Sucess!")
                    .font(.title2).bold()
                    .foregroundStyle(.white)
            }
            .padding(.vertical)
            
            HStack {
                Text("today's word was")
                    .foregroundStyle(.white)
                    .font(.title3)
            }
            .padding(.bottom)
            
            HStack {
                Text("\(global_variables.todays_word)")
                    .foregroundStyle(.white)
                    .font(.largeTitle).bold()
            }
            .padding(.bottom)
            
            HStack {
                Text("and it took you")
                    .foregroundStyle(.white)
                    .font(.title3)
            }
            .padding(.bottom)
            
            HStack {
                Text("\(global_variables.row) guesses")
                    .foregroundStyle(.white)
                    .font(.largeTitle).bold()
            }
            .padding(.bottom)
            
            HStack {
                Button {
                    global_variables.guess = ""
                    global_variables.todays_word = choose_todays_word()
                    clear_all(board_state: global_variables)
                } label: {
                    Text("play again")
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .background(.ultraThinMaterial)
                        )
                        .clipShape(Capsule())
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            Spacer()
        }
        .frame(width: width - 50, height: height / 2)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .background(.ultraThinMaterial)
            
        )
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    ContentView()
}
