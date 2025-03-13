 //
//  ContentView.swift
//  Memorize
//
//  Created by Aluno 25 on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    let emojis: [String] = ["👻","🎃","🕷","💀"]

        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.cyan)
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
