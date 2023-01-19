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
    
    var spintries = 0
    
    override func didMove(to view: SKView) {
        makeBackground()
        addSlotMachine()
        initializeOpeningSlotItems()
        UpdateScoreboardDetails(creditValue: "$1200", spinTriesValue: spintries)
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
        
        let addBet  = SKSpriteNode(imageNamed: "Plus")
        addBet.position = CGPoint(x:95,y:407)
        addBet.setScale(0.6)
        addChild(addBet)
        
        let reduceBet  = SKSpriteNode(imageNamed: "Minus")
        reduceBet.position = CGPoint(x:125,y:407)
        reduceBet.setScale(0.6)
        addChild(reduceBet)
        
        let maxBet  = SKSpriteNode(imageNamed: "Max")
        maxBet.position = CGPoint(x:260,y:407)
        maxBet.setScale(0.6)
        addChild(maxBet)
        
        let clearBet  = SKSpriteNode(imageNamed: "Clear")
        clearBet.position = CGPoint(x:290,y:407)
        clearBet.setScale(0.6)
        addChild(clearBet)
        
        let betText = SKLabelNode(fontNamed: "Arial")
        betText.text = "Bet: "
        betText.fontSize = 15
        betText.fontColor = SKColor.green
        betText.position = CGPoint(x: 165, y: 400)
        addChild(betText)
        
        let resetButton  = SKSpriteNode(imageNamed: "Reset")
        resetButton.position = CGPoint(x:100,y:200)
        resetButton.setScale(0.6)
        addChild(resetButton)
        
        let quitButton  = SKSpriteNode(imageNamed: "Quit")
        quitButton.position = CGPoint(x:295,y:200)
        quitButton.setScale(0.6)
        addChild(quitButton)
        
    }
    
    func UpdateScoreboardDetails(creditValue:String, spinTriesValue: Int)
    {
        
        let creditText = SKLabelNode(fontNamed: "Arial")
        creditText.text = "Credit: "
        creditText.fontSize = 15
        creditText.fontColor = SKColor.green
        creditText.position = CGPoint(x: 100, y: 590)
        addChild(creditText)
        
        let creditValueText = SKLabelNode(fontNamed: "Arial")
        creditValueText.text = creditValue
        creditValueText.fontSize = 15
        creditValueText.fontColor = SKColor.green
        creditValueText.position = CGPoint(x:170, y: 590)
        addChild(creditValueText)
        
        let spinTriesText = SKLabelNode(fontNamed: "Arial")
        spinTriesText.text = "Spin Tries: "
        spinTriesText.fontSize = 15
        spinTriesText.fontColor = SKColor.green
        spinTriesText.position = CGPoint(x: 112, y: 570)
        addChild(spinTriesText)
        
        let spinTriesValueText = SKLabelNode(fontNamed: "Arial")
        spinTriesValueText.text = String(spinTriesValue)
        spinTriesValueText.fontSize = 15
        spinTriesValueText.fontColor = SKColor.green
        spinTriesValueText.position = CGPoint(x: 155, y: 570)
        addChild(spinTriesValueText)
        
        let totalWinsText = SKLabelNode(fontNamed: "Arial")
        totalWinsText.text = "Total Wins:"
        totalWinsText.fontSize = 15
        totalWinsText.fontColor = SKColor.green
        totalWinsText.position = CGPoint(x: 280, y: 590)
        addChild(totalWinsText)
       
        let totalWinsValue = SKLabelNode(fontNamed: "Arial")
        totalWinsValue.text = "$0"
        totalWinsValue.fontSize = 15
        totalWinsValue.fontColor = SKColor.green
        totalWinsValue.position = CGPoint(x: 254, y: 570)
        addChild(totalWinsValue)
        
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
    
    
}

extension GameScene{
    func touchDown(atPoint pos : CGPoint) {
        //when Spin area button is clicked
        if(pos.x >= 54 && pos.x <= 340 &&
           pos.y <= 332 && pos.y >= 226
           )
        {
//            spintries = spintries + 1
//            UpdateScoreboardDetails(creditValue: "$1200", spinTriesValue: spintries)
            
            spinButton.removeFromParent()
        }
    }

    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
        //when Spin area button is clicked /effect
        if(pos.x >= 54 && pos.x <= 340 &&
           pos.y <= 332 && pos.y >= 226
           )
        {
            addChild(spinButton)
     
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
}

struct GameScene_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

