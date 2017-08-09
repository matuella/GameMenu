//
//  File.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

extension GMButton where Self: SKSpriteNode{
    
    func reloadTextLabel() {
        self.textLabel.horizontalAlignmentMode = .center
        self.textLabel.verticalAlignmentMode = .center
        self.textLabel.name = self.name
        self.textLabel.fontSize = SKLabelNode.calculateReasonableFontSize(basedOn: self.size)
        self.textLabel.fontColor = .black
        
        if let labelName = self.name {
            if let addedLabel = self.childNode(withName: labelName){
                addedLabel.removeFromParent()
                self.addChild(self.textLabel)
            } else {
                self.addChild(self.textLabel)
            }
        }
    }
}
