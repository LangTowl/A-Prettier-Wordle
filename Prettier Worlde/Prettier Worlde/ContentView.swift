//
//  ContentView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var global_variables = GlobalVariables()
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack {
                    Spacer()
                    
                    BoardView()
                        .environmentObject(global_variables)
                    
                    
                    Spacer()
                    
//                    HStack {
//                        Text("\(global_variables.todays_word)")
//                    }
                    
                    Spacer()
                    
                    KeyboardView()
                        .environmentObject(global_variables)
                        .padding(.bottom)
                        .padding(.bottom)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        global_variables.todays_word = choose_todays_word()
                    } label: {
                        Image(systemName: "dice")
                            .foregroundStyle(.white)
                            .font(.title2)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
