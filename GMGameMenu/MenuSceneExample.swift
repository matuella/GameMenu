//
//  GameScene.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 08/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit
import GameplayKit

private enum MenuLabels: String{
    case goLeft, goUp, goRight, goDown, backLeft, backUp, backRight, backDown
    
    func raw() -> String{
        return self.rawValue
    }
}

class MenuSceneExample: SKScene, GMMenuScene {
    
    var backFromLeft: Button!
    var backFromUp: Button!
    var backFromRight: Button!
    var backFromDown: Button!
    var centralNode: SKNode!
    
    override func didMove(to view: SKView) {
        let buttonSize = CGSize(width: self.frame.width * 0.3, height: self.frame.width * 0.15)
        
        
        let goLeft = Button(text: "Go Left!", position: CGPoint(x: self.frame.minX * 0.5, y: self.frame.midY), name: MenuLabels.goLeft.raw(), size: buttonSize, color: .red)
        self.backFromLeft = Button(text: "Go back ->", position: CGPoint(x: self.frame.minX * 2, y: self.frame.midY), name: MenuLabels.backLeft.raw(), size: buttonSize, color: .red)
        
        let goUp = Button(text: "Go Up!", position: CGPoint(x: self.frame.midX, y: self.frame.maxY * 0.5), name: MenuLabels.goUp.raw(), size: buttonSize, color: .green)
        self.backFromUp = Button(text: "Go back \\/", position: CGPoint(x: self.frame.midX, y: self.frame.maxY * 2), name: MenuLabels.backUp.raw(), size: buttonSize, color: .green)
        
        let goRight = Button(text: "Go Right!", position: CGPoint(x: self.frame.maxX * 0.5, y: self.frame.midY), name: MenuLabels.goRight.raw(), size: buttonSize, color: .blue)
        self.backFromRight = Button(text: "<- Go back", position: CGPoint(x: self.frame.maxX * 2, y: self.frame.midY), name: MenuLabels.backRight.raw(), size: buttonSize, color: .blue)
        
        let goDown = Button(text: "Go Down!", position: CGPoint(x: self.frame.midX, y: self.frame.minY * 0.5), name: MenuLabels.goDown.raw(), size: buttonSize, color: .orange)
        self.backFromDown = Button(text: "Go back /\\", position: CGPoint(x: self.frame.midX, y: self.frame.minY * 2), name: MenuLabels.backDown.raw(), size: buttonSize, color: .orange)
        
        self.centralNode = SKNode()
        self.centralNode.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        
        let camera = SKCameraNode()
        self.camera = camera
        self.addChildren([goLeft, self.backFromLeft, goUp, self.backFromUp, goRight, self.backFromRight, goDown, self.backFromDown, self.centralNode, camera])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            self.handleNodesInLocation(touch.location(in: self))
        }
    }
    
    
    private func handleNodesInLocation(_ location: CGPoint){
        for node in self.nodes(at: location){
            if let nodeName = node.name{
                switch MenuLabels(rawValue: nodeName)!{
                case .goLeft:
                    self.moveCameraTo(self.backFromLeft.position)
                    break
                case .goUp:
                    self.moveCameraTo(self.backFromUp.position)
                    break
                case .goRight:
                    self.moveCameraTo(self.backFromRight.position)
                    break
                case .goDown:
                    self.moveCameraTo(self.backFromDown.position)
                    break
                case .backLeft, .backRight, .backUp, .backDown:
                    self.moveCameraTo(self.centralNode.position)
                    break
                }
            }
        }
    }
}
