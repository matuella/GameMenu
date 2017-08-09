//
//  GMMenuScene.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

protocol GMMenuScene {
    
    func moveCameraTo(_ point: CGPoint, duration: TimeInterval, timingMode: SKActionTimingMode)
}
