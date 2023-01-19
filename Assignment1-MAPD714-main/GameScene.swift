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
    var slotMachine: SKSpriteNode!
    var spinButton: SKSpriteNode!
    var button: SKNode! = nil
    let objectSize = 0.4
    
    override func didMove(to view: SKView) {
        makeBackground()
        addSlotMachine()
        initializeOpeningSlotItems()
//        initializeScoreBoard()
        UpdateScoreboardDetails(creditValue: "$1200", spinTriesValue: 5)
    }
    
    func makeBackground(){
        let background = SKSpriteNode(color:UIColor(Color.clear), size:  CGSize(width:screen.width, height:screen.height))
        background.anchorPoint = CGPoint.zero
        background.position = CGPoint.zero
        addChild(background)
    }
    
    func addSlotMachine(){
        
     //   print("width: \(screen.width) | height: \(screen.height)")
        slotMachine = SKSpriteNode(imageNamed: "SlotMachine")
        slotMachine.position = CGPoint(x:screen.width/2,y:screen.height/2)
        addChild(slotMachine)
        slotMachine.setScale(0.65)
        
        spinButton = SKSpriteNode(imageNamed: "spinButton")
        spinButton.position = CGPoint(x:screen.width/2,y:300)
        addChild(spinButton)
        spinButton.setScale(0.65)
    }
    
    func UpdateScoreboardDetails(creditValue:String, spinTriesValue: Int)
    {
        let creditText = SKLabelNode(fontNamed: "Myriad Pro")
        
        creditText.text = "Credit: "
        creditText.fontSize = 18
        creditText.fontColor = SKColor.green
        creditText.position = CGPoint(x: 100, y: 590)
        addChild(creditText)
        
        let creditValueText = SKLabelNode(fontNamed: "Myriad Pro")
        creditValueText.text = creditValue
        creditValueText.fontSize = 18
        creditValueText.fontColor = SKColor.green
        creditValueText.position = CGPoint(x:195, y: 590)
        addChild(creditValueText)
        
        let spinTriesText = SKLabelNode(fontNamed: "Myriad Pro")
        spinTriesText.text = "Spin Tries: "
        spinTriesText.fontSize = 18
        spinTriesText.fontColor = SKColor.green
        spinTriesText.position = CGPoint(x: 117, y: 570)
        addChild(spinTriesText)
        
        let spinTriesValueText = SKLabelNode(fontNamed: "Myriad Pro")
        spinTriesValueText.text = String(spinTriesValue)
        spinTriesValueText.fontSize = 18
        spinTriesValueText.fontColor = SKColor.green
        spinTriesValueText.position = CGPoint(x: 175, y: 570)
        addChild(spinTriesValueText)
        
        let statusText = SKLabelNode(fontNamed: "Impact")
        statusText.text = "LOSE"
        statusText.fontSize = 40
        statusText.fontColor = SKColor.green
        statusText.position = CGPoint(x: screen.width/2, y: 628)
        addChild(statusText)
    }
    
    
    func initializeOpeningSlotItems(){
        
        slotMachine_header = SKSpriteNode(imageNamed: "header")
        slotMachine_header.position = CGPoint(x:screen.width/2,y:760)
        addChild(slotMachine_header)
        slotMachine_header.setScale(objectSize)
        
        slot_firstItem = SKSpriteNode(imageNamed: "strawburry")
        slot_firstItem.position = CGPoint(x:116,y:470)
        addChild(slot_firstItem)
        slot_firstItem.setScale(objectSize)
        
        slot_secondItem = SKSpriteNode(imageNamed: "banana")
        slot_secondItem.position = CGPoint(x:195,y:470)
        addChild(slot_secondItem)
        slot_secondItem.setScale(objectSize)
        
        slot_thirdItem = SKSpriteNode(imageNamed: "seven")
        slot_thirdItem.position = CGPoint(x:273,y:470)
        addChild(slot_thirdItem)
        slot_thirdItem.setScale(objectSize)
        
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

