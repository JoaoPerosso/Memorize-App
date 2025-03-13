 //
//  ContentView.swift
//  Memorize
//
//  Created by Aluno 25 on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        
        .foregroundColor(.cyan)
        .padding()
    }
    
}

struct CardView: View {
    @State var isFaceUp = true
        
    var body: some View {
        ZStack()  {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
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
