//
// ContentView.swift
// Lesson 12 - War
//
// Created by Marcus A. Mosley on 2021-01-22
//

import SwiftUI

let backing: UIImage = #imageLiteral(resourceName: "background.jpg")
let war: UIImage = #imageLiteral(resourceName: "logo.png")
let deal: UIImage = #imageLiteral(resourceName: "dealbutton.png")
let card2: UIImage = #imageLiteral(resourceName: "card2.png")
let card3: UIImage = #imageLiteral(resourceName: "card3.png")
let card4: UIImage = #imageLiteral(resourceName: "card4.png")
let card5: UIImage = #imageLiteral(resourceName: "card5.png")
let card6: UIImage = #imageLiteral(resourceName: "card6.png")
let card7: UIImage = #imageLiteral(resourceName: "card7.png")
let card8: UIImage = #imageLiteral(resourceName: "card8.png")
let card9: UIImage = #imageLiteral(resourceName: "card9.png")
let card10: UIImage = #imageLiteral(resourceName: "card10.png")
let card11: UIImage = #imageLiteral(resourceName: "card11.png")
let card12: UIImage = #imageLiteral(resourceName: "card12.png")
let card13: UIImage = #imageLiteral(resourceName: "card13.png")
let card14: UIImage = #imageLiteral(resourceName: "card14.png")

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image(uiImage: backing)
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                Image(uiImage: war)
                Spacer()
                HStack() {
                    Spacer()
                    Image(uiImage: UIImage(imageLiteralResourceName: playerCard))
                    Spacer()
                    Image(uiImage: UIImage(imageLiteralResourceName: cpuCard))
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image(uiImage: deal)
                })
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack() {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
