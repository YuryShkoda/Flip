//
//  Move.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit
import GameplayKit

class Move: NSObject, GKGameModelUpdate {
    var row: Int
    var col: Int
    var value = 0
    
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
    }
}
