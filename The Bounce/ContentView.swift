//
//  ContentView.swift
//  The Bounce
//
//  Created by Martin Otyeka on 2022-06-05.
//

import AVKit
import SwiftUI

struct ContentView: View {
    
    let player: LoopingPlayer
    
    init() {
        let resource = Bundle.main.url(forResource: "penalty", withExtension: "mov")!
        let looper = LoopingPlayer(url: resource)
        looper.loopPlayback = true
        looper.bouncePlayback = true
        self.player = looper
    }
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VideoPlayer(player: player)
                .frame(width: 400, height: 400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
