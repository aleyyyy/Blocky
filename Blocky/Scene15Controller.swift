//
//  Scene15Controller.swift
//  Blocky
//
//  Created by Lodewijck Vogelzang on 22-08-14.
//  Copyright (c) 2014 Lodewijck Vogelzang. All rights reserved.
//

import UIKit
import SceneKit

class Scene15Controller: SceneController {
    
    required init (levelViewController: LevelViewController, sceneNumber: Int) {
        
        super.init(levelViewController: levelViewController, sceneNumber: sceneNumber)
        
        cameraFollowsBlock = false
        
        let tiles = [[0,2,1,1,0,0],[0,1,0,1,1,1],[1,1,0,1,1,1],[0,1,0,1,1,1],[0,2,1,1,0,0]]
        
        let food0 = Food(foodNumber: 0, startLocation: (2,0))
        let food1 = Food(foodNumber: 1, startLocation: (2,4))
        
        let speed0 = 0.9
        
        let pattern0 = [("N", speed0), ("H", 0.3), ("N", speed0), ("S", speed0), ("H", 0.3), ("S", speed0)]
        let pattern1 = [("S", speed0), ("H", 0.3), ("S", speed0), ("N", speed0), ("H", 0.3), ("N", speed0)]
        
        let enemy0 = Enemy(enemyNumber: 0, startLocation: (4,1), animationPattern: pattern0)
        let enemy1 = Enemy(enemyNumber: 1, startLocation: (5,3), animationPattern: pattern1)
        
        blocky = Blocky(tiles: tiles, startLocation: (0,2), endLocation: (0,2))
        enemies = [enemy0, enemy1]
        foods = [food0, food1]
        
    }
    
}