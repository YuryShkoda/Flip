//
//  Player.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {
    static let allPlayers = [Player(stone: .black), Player(stone: .white)]
    
    var playerId: Int
    
    var stoneColor: StoneColor
    
    init(stone: StoneColor) {
        stoneColor = stone
        playerId   = stone.rawValue
    }
    
    var opponent: Player {
        if stoneColor == .black { return Player.allPlayers[1] } else { return Player.allPlayers[0] }
    }
}
