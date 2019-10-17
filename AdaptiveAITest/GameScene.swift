//
//  GameScene.swift
//  AdaptiveAITest
//
//  Created by Tom Shiflet on 10/17/19.
//  Copyright © 2019 Tom Shiflet. All rights reserved.
//

import SpriteKit
import GameplayKit

var myEnt:EntityClass?

class GameScene: SKScene {
    
    

    override func didMove(to view: SKView) {
        myEnt=EntityClass(theScene: self, pos: CGPoint(x: 0, y: 0), number: 0)

    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {

        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        myEnt!.update(cycle: 0)
        if myEnt!.sprite.position.x > size.width/2 || myEnt!.sprite.position.x < -size.width/2 || myEnt!.sprite.position.y > size.height/2 || myEnt!.sprite.position.y < -size.height/2
        {
            myEnt!.sprite.position=CGPoint(x: 0, y: 0)
        }
    }
}
