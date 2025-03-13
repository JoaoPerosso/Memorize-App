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
            CardView()
            CardView()
            CardView()
        }
        
        .foregroundColor(.cyan)
        .padding()
    }
    
}

struct CardView: View {
    var isFaceUp: Bool = false
        
    var body: some View {
        ZStack(content:  {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20).strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else {
                RoundedRectangle(cornerRadius: 20)
            }
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
