//
//  SKLabelNodeExtension.swift
//  GMGameMenu
//
//  Created by Guilherme Carlos Matuella on 09/08/17.
//  Copyright © 2017 gmatuella. All rights reserved.
//

import SpriteKit

extension SKLabelNode{
    
    convenience init(_ text: String, position: CGPoint, name: String){
        self.init(text: text)
        self.name = name
        self.position = position
    }
    
    static func calculateReasonableFontSize(basedOn size: CGSize) -> CGFloat{
        if size.height > size.width {
            return size.width * 0.4
        } else {
            return size.height * 0.4
        }
    }
}
