//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by moutaz hegazy on 4/21/21.
//  Copyright © 2021 Mohmaed_Elkholy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var rightDiceNumber = 6
    @State var leftDiceNumber = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
        
    }
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


