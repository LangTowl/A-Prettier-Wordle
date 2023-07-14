//
//  ContentView.swift
//  Prettier Worlde
//
//  Created by Lang Towl on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var global_variables = GlobalVariables()
    
    @State var show_popover: Bool = false
    @State var show_word: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                    .onAppear {
                        global_variables.todays_word = choose_todays_word()
                    }
                
                VStack {
                    Spacer()
                    
                    BoardView()
                        .environmentObject(global_variables)
                    
                    Spacer()
                    
                    KeyboardView()
                        .environmentObject(global_variables)
                        .padding(.bottom)
                        .padding(.bottom)
                }
                .sheet(isPresented: $show_popover) {
                    NavigationStack {
                        
                        VStack {
                            Button {
                                show_word.toggle()
                            } label: {
                                Text("\(show_word == true ? "hide" : "show") today's word")
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                    .background(.ultraThinMaterial)
                                    .clipShape(Capsule())
                            }
                            .padding(.vertical)
                            
                            Text(show_word == true ? global_variables.todays_word : " ")
                        }
                        
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading){ForEach(0...letter_occurence.count - 1, id: \.self) { i in                                            Text("\(letter_occurence[i].0)")
                                        .foregroundStyle(.white)
                                        .padding(.trailing)
                                        .padding(.trailing)
                                }
                                }
                                .padding(.trailing)
                                .padding(.trailing)
                                
                                VStack(alignment: .leading){
                                    ForEach(0...letter_occurence.count - 1, id: \.self) { i in
                                        Text("\(letter_occurence[i].1)")
                                            .foregroundStyle(.white)
                                            .padding(.trailing)
                                            .padding(.trailing)
                                    }
                                }
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .padding(.horizontal)
                        .navigationTitle("Letter Occurance")
                    }
                    .environment(\.colorScheme, .dark)
                    .presentationDetents([.fraction(0.99)])
                    .presentationBackground(.ultraThinMaterial)
                }
                
                if check_if_win(board_state: global_variables) {
                    WinView()
                        .environmentObject(global_variables)
                        .transition(.opacity)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        global_variables.todays_word = choose_todays_word()
                        clear_all(board_state: global_variables)
                    } label: {
                        Image(systemName: "dice")
                            .foregroundStyle(.white)
                            .font(.title2)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        show_popover.toggle()
                    } label: {
                        Image(systemName: "chart.bar.doc.horizontal")
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
