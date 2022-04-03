//
//  ContentView.swift
//  Memorize
//
//  Created by 민지 on 2022/03/27.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😊","🥰","🤣","😎", "😇", "😘", "🐶", "🐹", "🐼", "🐯", "🦄", "🛖", "🏠", "🏡", "🏘", "🏚", "🏗", "📚", "🎱", "⭐️", "🏛", "🙋🏻", "👻", "🥳", "🥲", "☺️", " 🙄", "🤩", "🥴"]
    
    @State var emojiCount = 24
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:70))]){
                    ForEach(emojis[0..<emojiCount], id:\.self) { emoji in
                        CardView(content: emoji)
                        .aspectRatio(5/8, contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.pink)
            
           
            .padding(.horizontal)
            .font(.largeTitle)
            
        }
      
        
        
    }
    
    var remove :some View {
        Button(action: {
            if emojiCount > 1{
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    
    var add :some View {
        Button(action: {
            if emojiCount > 1{
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
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
                .strokeBorder(lineWidth: 5)
                .foregroundColor(.pink)
                
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
