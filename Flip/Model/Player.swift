//
//  Player.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit

class Player: NSObject {
    static let allPlayers = [Player(stone: .black), Player(stone: .white)]
    
    var stoneColor: StoneColor
    
    init(stone: StoneColor) {
        stoneColor = stone
    }
    
    var opponent: Player {
        if stoneColor == .black { return Player.allPlayers[1] } else { return Player.allPlayers[0] }
    }
}
