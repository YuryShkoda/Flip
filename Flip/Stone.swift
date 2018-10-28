//
//  Stone.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit
import SpriteKit

class Stone: SKSpriteNode {
    // shared properties for 3 possible textures
    static let thinkingTexture = SKTexture(imageNamed: "thinking")
    static let whiteTexture    = SKTexture(imageNamed: "white")
    static let blackTextute    = SKTexture(imageNamed: "black")
    
    func setPlayer(_ player: StoneColor) {
        if player == .white {
            texture = Stone.whiteTexture
        } else if player == .black {
            texture = Stone.blackTextute
        } else if player == .choise {
            texture = Stone.thinkingTexture
        }
    }
    
    var row = 0
    var col = 0
}
