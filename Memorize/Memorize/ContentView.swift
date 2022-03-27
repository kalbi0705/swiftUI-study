//
//  ContentView.swift
//  Memorize
//
//  Created by 민지 on 2022/03/27.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😊","🥰","🤣","😎"]
    var body: some View {
        HStack {
            ForEach(emojis, id:\.self, content: { emoji in
                CardView(content: emoji)
            })
           
        }
        .padding(.all)
        .foregroundColor(.pink)
      
        
        
    }
}

struct CardView : View {
    
    var content: String
    
    @State var isFaceUp : Bool = true
    
    var body: some View{
        
        
        ZStack {
            
            let shape = RoundedRectangle(cornerRadius: 30.0)
            
            if isFaceUp {
                
                shape
                .fill()
                .foregroundColor(.white)
                shape
                .stroke(lineWidth: 5)
                
                Text(content).font(.largeTitle)
                    
            } else{
                    shape.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
            
}
        
        
    

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
       

    }
}
