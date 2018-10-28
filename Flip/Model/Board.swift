//
//  Board.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit

class Board: NSObject {
    static let size = 8
    var rows = [[StoneColor]]()
    var currentPlayer = Player.allPlayers[0]
}
