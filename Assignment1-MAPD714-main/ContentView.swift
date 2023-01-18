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
    
//    @State var options = ["Swift", "Kotlin", "Java", "JavaScript"] // 1
//    @State var selectedItem = "Swift" // 2
    
    var body: some View {
        SpriteView(scene:scene)
            .frame(width:screen.width,height: screen.height)
            .ignoresSafeArea()
//        Picker("Pick a language", selection: $selectedItem) { // 3
//                   ForEach(options, id: \.self) { item in // 4
//                       Text(item) // 5
//                   }
//               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
