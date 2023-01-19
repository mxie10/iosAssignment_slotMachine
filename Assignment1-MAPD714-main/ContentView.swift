//
//  ContentView.swift
//  Assignment1-MAPD714-main
//
//  Created by Mingyuan Xie on 1/16/23.
//

import SwiftUI
import SpriteKit

let screen = UIScreen.main.bounds

struct ContentView: View {
    var scene: SKScene{
        let scene = GameScene()
        
        scene.size = CGSize(width: screen.width, height: screen.height)
        
        return scene
    }
    

    var body: some View {
        SpriteView(scene:scene)
            .frame(width:screen.width,height: screen.height)
            .ignoresSafeArea()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
