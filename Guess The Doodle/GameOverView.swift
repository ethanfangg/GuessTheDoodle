//
//  GameOverView.swift
//  Guess The Doodle
//
//  Created by Ethan Fang on 3/3/24.
//

import SwiftUI

struct GameOverView: View {
    @ObservedObject var matchManager: MatchManager
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("gameOver")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 70)
                .padding(.vertical)
            
            Text("Score \(matchManager.score)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color("primaryYellow"))
            
            Spacer()
            
            Button {
                matchManager.resetGame()
            } label: {
                Text("PLAY")
                    .foregroundColor(Color("menuBtn"))
                    .brightness(-0.4)
                    .font(.largeTitle)
                    .bold()
            }
            .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
            .padding(.vertical, 20)
            .padding(.horizontal, 100)
            .background(
                Capsule(style: .circular)
                    .fill(Color("menuBtn"))
            )
            
            Spacer()
        }
        .background(
            Image("gameOverBg")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.01)
        )
        .ignoresSafeArea()
    }
}

#Preview {
    GameOverView(matchManager: MatchManager())
}
