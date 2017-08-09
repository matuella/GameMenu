//
//  Button.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

protocol GMButton {
    var textLabel: SKLabelNode {get set}
    
    func reloadTextLabel()
}
