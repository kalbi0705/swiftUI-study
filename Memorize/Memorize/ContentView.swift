//
//  ContentView.swift
//  Memorize
//
//  Created by 민지 on 2022/03/27.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:70))]){
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(5/8, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.pink)
            
           
            .padding(.horizontal)
            .font(.largeTitle)
            
        
      
        
        }
    }
}


struct CardView : View {
    
    var card : MemoryGame<String>.Card
    
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
                
                Text(card.content).font(.largeTitle)
                    
            } else{
                    shape.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
            
}
        

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            .preferredColorScheme( .light)
    }
}
        
    























