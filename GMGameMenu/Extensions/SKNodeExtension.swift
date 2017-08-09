//
//  SKNodeExtension.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

extension SKNode {
    
    
    /// Helper that will receive an Array of SKNode and will add
    /// all of them using the SKNode "addChild()".
    ///
    /// - Parameter children: SKNodes that will be added
    func addChildren(_ children: [SKNode]){
        for child in children {
            self.addChild(child)
        }
    }
}
