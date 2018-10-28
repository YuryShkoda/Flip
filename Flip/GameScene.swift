//
//  GameScene.swift
//  Flip
//
//  Created by Yury on 10/27/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var rows = [[Stone]]()
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.blendMode = .replace
        background.zPosition = 1
        
        addChild(background)
        
        let gameBoard = SKSpriteNode(imageNamed: "board")
        gameBoard.name = "board"
        gameBoard.zPosition = 2
        
        addChild(gameBoard)
        
        // set up constraints for positioning
        let offsetX   = -280
        let offsetY   = -281
        let stoneSize = 80
        
        for row in 0 ..< 8 {
            var colArray = [Stone]()
            
            for col in 0 ..< 8 {
                let stone = Stone(color: UIColor.clear, size: CGSize(width: stoneSize, height: stoneSize))
                stone.position = CGPoint(x: offsetX + (col * stoneSize), y: offsetY + (row * stoneSize))
                stone.row = row
                stone.col = col
                
                gameBoard.addChild(stone)
                
                colArray.append(stone)
            }
            
            rows.append(colArray)
        }
        
        rows[4][3].setPlayer(.white)
        rows[4][4].setPlayer(.black)
        rows[3][4].setPlayer(.white)
        rows[3][3].setPlayer(.black)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
