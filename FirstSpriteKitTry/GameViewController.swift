//
//  GameViewController.swift
//  FirstSpriteKitTry
//
//  Created by Özcan on 9.07.2024.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            // vire.showFPs ve view.showsNodeCount ekranın altında çıktığı için bunları siliyoruz.
            
            /*view.showsFPS = true
            view.showsNodeCount = true*/
            
            view.showsPhysics = true // bunu yazmamızın nedeni bizim görsel nesnelere gerçek bir body vermek böylece onlar çarptıklarında vs. birbirini algılayabilecekler. 
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
