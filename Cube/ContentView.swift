//
//  ContentView.swift
//  Cube
//
//  Created by Dorina Kovács on 2023. 05. 20..
//

import SwiftUI

struct ContentView: View {
    @State var playerDice = "white1"
    @State var cpuDice = "black2"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("bg2")
                .resizable()
                .ignoresSafeArea()
            ZStack{
                
                VStack{
                    Spacer()
                    Image("logo")
                    Spacer()
                    
                    VStack{
                        Text("Dice Role")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.107, green: 0.322, blue: 0.201, opacity: 0.66))
                            .padding(.top, 100.0)
                        Spacer()
                        HStack{
                            Spacer()
                            Image(playerDice)
                                .padding(.trailing, 20.0)
                                
                            Image(cpuDice)
                                .padding(.leading, 20.0)
                            Spacer()
                        }
                        .padding(.top, -15.0)
                        Spacer()
                    
                        Button {
                            deal()
                        } label: {
                            Image("button-2")
                        }
                            
                        Spacer()
                        
                        HStack{
                            Spacer()
                            VStack{
                                Text("Player")
                                    .font(.title2).fontWeight(.medium)
                                Text(String(playerScore))
                                    .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 50.0)
                                        .background(RoundedRectangle(cornerRadius: 50).foregroundColor(Color(hue: 0.43, saturation: 0.754, brightness: 0.379, opacity: 0.541))).fontWeight(.heavy)
                            }
                            .padding(.top, -10.0)
                            Spacer()
                            VStack{
                                Text("CPU")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                Text(String(cpuScore))
                                    .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all, 11.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 50.0)
                                    .background(RoundedRectangle(cornerRadius: 50).foregroundColor(Color(hue: 0.149, saturation: 0.754, brightness: 0.379, opacity: 0.541))).fontWeight(.heavy)

                            }
                            .padding(.top, -10.0)
                            Spacer()
                        }
                        Spacer()
                    }
                    .background(RoundedRectangle(cornerRadius: 35)
                        .padding()
                        .foregroundColor(Color(hue: 0.286, saturation: 0.178, brightness: 0.852, opacity: 0.957)))
                    }
            }
        }
    }
    
    func deal(){
        //random player dice
        let playerDiceValue = Int.random(in: 1...6)
        playerDice = "white" + String(playerDiceValue)
        
        //random cpu dice
        let cpuDiceValue = Int.random(in: 1...6)
        cpuDice = "black" + String(cpuDiceValue)
        
        // player score
        if playerDiceValue > cpuDiceValue {
            playerScore += 1
        }
        //cpu score
        else if  cpuDiceValue > playerDiceValue{
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
