 //
//  ContentView.swift
//  Memorize
//
//  Created by Aluno 25 on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻","🎃","🕷","💀","🕸","👿","👽","👺","🐈‍⬛","🗿","💣",]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            
            HStack {
                ForEach(0..<cardCount, id: \.self){ index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.cyan)
            
            HStack {
                Button(action: {
                    if cardCount > 1{
                        cardCount -= 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.badge.minus.fill")
                })
                Spacer()
                Button(action:{
                    if cardCount < emojis.count {
                        cardCount += 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.badge.plus.fill")
                })
            }
            .imageScale(.large)
            .font(.largeTitle)
            .foregroundColor(.red)
        }
        
        
        .padding()
    }
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack()  {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else {
                base.fill()            }
        }
        .onTapGesture { //(count: 2) two taps
            isFaceUp.toggle() //toggle is a function that invert the value of a boolean variable, but need the @state on declaration of var
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
