//
//  ContentView.swift
//  TestApp
//
//  Created by David Lev on 31/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    private func getRandomCard() -> String {
        "card" + String(Int.random(in: 2...14))
    }
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("player")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Image(playerCard)
                    }
                    Spacer()
                    VStack {
                        Text("cpu")
                            .font(.title)
                            .foregroundColor(.white)
                        Image(cpuCard)
                    }
                    
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    playerCard = getRandomCard()
                    cpuCard = getRandomCard()
                    
                    if playerCard > cpuCard {
                        playerScore += 1
                    }
                    else if cpuCard > playerCard {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")

                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).foregroundColor(.white).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(.white).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
            }
        }
    }
}
