 //
//  MenuView.swift
//  Guess The Doodle
//
//  Created by Ethan Fang on 3/3/24.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager: MatchManager
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(30)
            
            Spacer()
            
            Button {
                matchManager.startMatchmaking()
            } label: {
                Text("PLAY")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
            .padding(.vertical, 20)
            .padding(.horizontal, 100)
            .background(
                Capsule(style: .circular)
                    .fill(matchManager.authenticationState != .authenticated || matchManager.inGame ? .gray : Color("playBtn"))
            )
            
            Text(matchManager.authenticationState.rawValue)
                .font(.headline.weight(.semibold))
                .foregroundStyle(Color("primaryYellow"))
                .padding()
            
            Spacer()
        }
        .background(
            Image("menuBg")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.05)
        )
        .ignoresSafeArea()
    }
}

#Preview {
    MenuView(matchManager: MatchManager())
}
