//
//  Button.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit


class Button: SKSpriteNode, GMButton {
    
    var textLabel: SKLabelNode{
        didSet{
            self.reloadTextLabel()
        }
    }

    init(text: String, position: CGPoint, name: String, size: CGSize, color: UIColor) {
        self.textLabel = SKLabelNode(text: text)
        super.init(texture: nil, color: color, size: size)
        self.name = name
        self.position = position
        self.reloadTextLabel()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

