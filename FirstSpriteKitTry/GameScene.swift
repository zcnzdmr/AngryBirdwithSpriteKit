//
//  GameScene.swift
//  FirstSpriteKitTry
//
//  Created by Özcan on 9.07.2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var bird2 = SKSpriteNode()
    var mountain = SKSpriteNode()
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()

    
    override func didMove(to view: SKView) {
        
        // MARK: NESNELERİ(NOD'LARI) KOD İLE TANIMLAMA KISMI
        
        let texture = SKTexture(imageNamed: "bird") //burda bir texture oluşturduk bird image ile
        
        bird2 = SKSpriteNode(texture: texture) // burda Node'a bu texture'ı atadık. bird2 bir SpriteNode yani GameScene.sks 'de ki Color Sprite ve biz ona texture atıyoruz.
        
        bird2.position = CGPoint(x: -self.frame.width / 3, y: -self.frame.height / 5.9) //Anchor Pointe göre konum veriyoruz Node'umuza
        
        bird2.size = CGSize(width: self.frame.width / 16, height: self.frame.height / 10) // Burda Node'umaza bir boyut veriyoruz. Kuş ne kadar büyük olacak onu söyledik. Ancak farklı ekran boyutlarında düzgün çalışması için ekrana göre vermeliyiz.
        
        bird2.zPosition = 1 // Burda ise Node'umuzun önde mi arka da mı görüneceğini belirleyen z position'ı veriyoruz.
        self.addChild(bird2) // en son node'umuzu ekliyoruz ekranımıza.
        
        
        let mountainTexture = SKTexture(imageNamed: "background")
        
        mountain = SKSpriteNode(texture: mountainTexture)
        print("\(self.frame.width)")
        mountain.position = CGPoint(x: 1 , y: 1)
        mountain.size = CGSize(width: self.frame.width, height: self.frame.height)
        mountain.zPosition = -1
        self.addChild(mountain)
        
        
        let boxTexture = SKTexture(imageNamed: "1")
        
        box1 = SKSpriteNode(texture: boxTexture)
        box1.position = CGPoint(x: self.frame.width / 4, y: -self.frame.height / 3)
        box1.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box1.zPosition = 0
        self.addChild(box1)
        
        box2 = SKSpriteNode(texture: boxTexture)
        box2.position = CGPoint(x: self.frame.width / 2.9, y: -self.frame.height / 3)
        box2.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box2.zPosition = 0
        self.addChild(box2)
        
        box3 = SKSpriteNode(texture: boxTexture)
        box3.position = CGPoint(x: self.frame.width / 3.4, y: -self.frame.height / 4.5)
        box3.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box3.zPosition = 0
        self.addChild(box3)
        
        
        
        
        

    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
  
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
