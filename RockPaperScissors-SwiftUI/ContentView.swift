//
//  ContentView.swift
//  RockPaperScissors-SwiftUI
//
//  Created by Theo Vora on 7/1/21.
//

import SwiftUI

struct ContentView: View {
    
    let moves = ["Rock", "Paper", "Scissors"]
    let finalRound = 10
    
    @State var shouldWin = false
    @State var round = 1
    @State var points = 0
    @State var playerMove = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Score: \(points)")
            }
            Spacer()
            VStack {
                Text("Choose a move where you")
                    .fontWeight(.light)
                HStack(alignment: .bottom) {
                    Text(shouldWin ? "Win" : "Lose")
                        .font(.title)
                        .fontWeight(.bold)
                        .italic()
                    Text("to")
                    Text("\(moves[0])")
                        .font(.title)
                        .fontWeight(.bold)
                        .italic()
                }
            }
            Spacer()
            VStack {
                Picker("Your move", selection: $playerMove) {
                    ForEach(0 ..< moves.count) { i in
                        Text("\(moves[i])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                Button("Play") {
                    print("Player chose \(moves[playerMove])")
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
