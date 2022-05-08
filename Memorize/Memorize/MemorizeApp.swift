//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 민지 on 2022/03/27.
//
//우리의 model

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)

        }
    }
}
