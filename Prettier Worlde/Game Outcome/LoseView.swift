//
//  LoseView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/17/23.
//

import SwiftUI

struct LoseView: View {
    
    let width: Double = UIScreen.main.bounds.width
    let height: Double = UIScreen.main.bounds.height
    
    @EnvironmentObject var global_variables: GlobalVariables
    
    var body: some View {
        VStack {
            Text("bummer...")
                .font(.title2).bold()
                .foregroundStyle(.white)
                .padding(.vertical)
            
            Text("today's word was")
                .foregroundStyle(.white)
                .font(.title3)
                .padding(.bottom)
            
            Text("\(global_variables.todays_word)")
                .foregroundStyle(.white)
                .font(.largeTitle).bold()
                .padding(.bottom)
            
            Text("better luck next time...")
                .foregroundStyle(.white)
                .font(.title3)
            
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
        .frame(width: width - 50, height: height / 2)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.red).opacity(0.3)
                
                RoundedRectangle(cornerRadius: 25)
                    .background(.ultraThinMaterial)
            }
            
        )
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    ContentView()
}
