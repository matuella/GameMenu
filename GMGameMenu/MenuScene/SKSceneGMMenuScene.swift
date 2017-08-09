//
//  GMMenuController.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 08/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

extension GMMenuScene where Self: SKScene {
    
    private var moveCameraToError: String {
        get { return "Error calling moveCameraTo: the SKScene must have a SKCameraNode." }
    }
    
    func moveCameraTo(_ point: CGPoint, duration: TimeInterval = 1.25, timingMode: SKActionTimingMode = .easeInEaseOut) {
        let moveAction = SKAction.move(to: point, duration: duration)
        moveAction.timingMode = timingMode
        if let camera = self.camera {
            camera.run(moveAction)
        } else {
            fatalError(self.moveCameraToError)
        }
    }
    
}

