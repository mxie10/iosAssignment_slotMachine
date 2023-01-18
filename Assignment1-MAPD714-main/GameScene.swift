//
//  GameScene.swift
//  Assignment1-MAPD714-main
//
//  Created by Mingyuan Xie on 1/16/23.
//

import Foundation
import SpriteKit
import SwiftUI

class GameScene:SKScene {
    var slot_firstItem: SKSpriteNode!
    var slot_secondItem: SKSpriteNode!
    var slot_thirdItem: SKSpriteNode!
    var scoreNode_onesPlace: SKSpriteNode!
    var scoreNode_tensPlace: SKSpriteNode!
    var scoreNode_hundredsPlace: SKSpriteNode!
    var slotMachine_header: SKSpriteNode!
    var button: SKNode! = nil
    override func didMove(to view: SKView) {
        makeBackground()
        initializeOpeningSlotItems()
        initializeScoreBoard()
    }
    
    func makeBackground(){
        let background = SKSpriteNode(color:UIColor(Color.clear), size:  CGSize(width:screen.width, height:screen.height))
        background.anchorPoint = CGPoint.zero
        background.position = CGPoint.zero
        addChild(background)
    }
    
    func initializeOpeningSlotItems(){
        
        slotMachine_header = SKSpriteNode(imageNamed: "header")
        slotMachine_header.position = CGPoint(x:screen.width/2,y:screen.height/1.17)
        addChild(slotMachine_header)
        slotMachine_header.setScale(0.7)
        
        slot_firstItem = SKSpriteNode(imageNamed: "strawburry")
        slot_firstItem.position = CGPoint(x:screen.width/2,y:screen.height/3.0)
        addChild(slot_firstItem)
        
        slot_secondItem = SKSpriteNode(imageNamed: "banana")
        slot_secondItem.position = CGPoint(x:screen.width/3.5,y:screen.height/1.8)
        addChild(slot_secondItem)
        
        slot_thirdItem = SKSpriteNode(imageNamed: "seven")
        slot_thirdItem.position = CGPoint(x:screen.width/1.4,y:screen.height/1.8)
        addChild(slot_thirdItem)
        
        button = SKSpriteNode(color: .red, size: CGSize(width: 280, height: 60))
        button.position = CGPoint(x:self.frame.midX, y:120);
        addChild(button)
    }
    
    func initializeScoreBoard(){
        scoreNode_onesPlace = SKSpriteNode(imageNamed: "0")
        scoreNode_tensPlace = SKSpriteNode(imageNamed: "1")
        scoreNode_hundredsPlace = SKSpriteNode(imageNamed: "2")
        
        scoreNode_onesPlace.position = CGPoint(x:120, y:screen.height/1.43)
        addChild(scoreNode_onesPlace)
        scoreNode_tensPlace.position = CGPoint(x:80, y:screen.height/1.43)
        addChild(scoreNode_tensPlace)
        scoreNode_hundredsPlace.position = CGPoint(x:40, y:screen.height/1.43)
        addChild(scoreNode_hundredsPlace)
        
        scoreNode_onesPlace.setScale(0.8)
        scoreNode_tensPlace.setScale(0.8)
        scoreNode_hundredsPlace.setScale(0.8)
    }
}

extension GameScene{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}

struct GameScene_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

