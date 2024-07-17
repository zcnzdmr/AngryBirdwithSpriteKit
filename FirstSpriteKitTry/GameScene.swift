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
    var tree = SKSpriteNode()
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()

    
    override func didMove(to view: SKView) {
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame) // bu bizim ekran sınırlarımız içerisinde total bir fiziksel dünya bir fizik body oluşturur. biz ekran çerçevesi içerisinde bir dünya yarattık örneğin kuş düşünce bu çerçevenin içinde kalır.
        self.scene?.scaleMode = .aspectFit
        
        // MARK: NESNELERİ(NOD'LARI ve TEXTURE'LARI) KOD İLE TANIMLAMA KISMI
        
        let birdTexture = SKTexture(imageNamed: "bird") //burda bir texture oluşturduk bird image ile
        
        bird2 = SKSpriteNode(texture: birdTexture) // burda Node'a bu texture'ı atadık. bird2 bir SpriteNode yani GameScene.sks 'de ki Color Sprite ve biz ona texture atıyoruz.
        
        bird2.position = CGPoint(x: -self.frame.width / 3, y: -self.frame.height / 4.6) //Anchor Pointe göre konum veriyoruz Node'umuza.
        
        bird2.size = CGSize(width: self.frame.width / 16, height: self.frame.height / 10) // Burda Node'umaza bir boyut veriyoruz. Kuş ne kadar büyük olacak onu söyledik. Ancak farklı ekran boyutlarında düzgün çalışması için ekrana göre vermeliyiz.
        
        bird2.zPosition = 1 // Burda ise Node'umuzun önde mi arka da mı görüneceğini belirleyen z position'ı veriyoruz.
        
        bird2.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().width / 18 ) // bizim GameViewController'da  view.showsPhysics = true aslında bunu göstermek içindi. Bu bize kuşun etrafında mavi bir çizgi oluşturuyor. Yani bir body veriyoruz böylece diğer nesnelere de verince bunlar birbirini çarpıştığında vs. algılayabiliyor.
        
//        let path = CGMutablePath()
//                path.move(to: CGPoint(x: 0, y: 0))
//                path.addLine(to: CGPoint(x: self.size.width, y: 0))
//                path.addLine(to: CGPoint(x: self.size.width, y: self.size.height + 200))
//                path.addLine(to: CGPoint(x: 0, y: self.size.height))
//                path.closeSubpath()
        
        
        bird2.physicsBody?.affectedByGravity = false // burda kuşun fiziksel body'si yer çekiminden etkilenecek mi ye true dedik.
        
        bird2.physicsBody?.isDynamic = true // fiziksel dinamiklerden etkilenecek mi yi true yaptık.
        
        bird2.physicsBody?.mass = 0.3 // kuşumuza fiziksel vücuduna bir kütle veriyoruz bu bir kg.

        
        self.addChild(bird2) // en son node'umuzu ekliyoruz ekranımıza.
        
        // MARK: Dağ background kısmı
        let mountainTexture = SKTexture(imageNamed: "background")
        
        mountain = SKSpriteNode(texture: mountainTexture)
        print("\(self.frame.width)")
        mountain.position = CGPoint(x: 1 , y: 1)
        mountain.size = CGSize(width: self.frame.width, height: self.frame.height * 1.2 )
        mountain.zPosition = -1
        self.addChild(mountain)
        
        // MARK: Kutuları ayarlama kısmı
        
        let boxTexture = SKTexture(imageNamed: "1")
        let sizeOfBox = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        
        box1 = SKSpriteNode(texture: boxTexture)
        box1.position = CGPoint(x: self.frame.width / 4.5, y: -self.frame.height / 2.1)
        box1.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box1.zPosition = 0
        
        // burda kutuya bir physic body ve kütle tanımlıyorum, yer çekiminden etkilensin ve dinamiklerden etkilensin diyorum
        box1.physicsBody = SKPhysicsBody(rectangleOf: sizeOfBox)
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.mass = 0.3
        box1.physicsBody?.allowsRotation = true // kuş çarptığında sağa sola dönsün müyü true yaptık.
        
        self.addChild(box1)
        
        box2 = SKSpriteNode(texture: boxTexture)
        box2.position = CGPoint(x: self.frame.width / 3, y: -self.frame.height / 2.1)
        box2.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box2.zPosition = 0
        
        box2.physicsBody = SKPhysicsBody(rectangleOf: sizeOfBox)
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.mass = 0.3
        
        self.addChild(box2)
        
        box3 = SKSpriteNode(texture: boxTexture)
        box3.position = CGPoint(x: self.frame.width / 2.9, y: -self.frame.height / 3)
        box3.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box3.zPosition = 0
        
        box3.physicsBody = SKPhysicsBody(rectangleOf: sizeOfBox)
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.mass = 0.3
        self.addChild(box3)
        
        
        box4 = SKSpriteNode(texture: boxTexture)
        box4.position = CGPoint(x: self.frame.width / 3.7, y: -self.frame.height / 3)
        box4.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box4.zPosition = 0
        
        box4.physicsBody = SKPhysicsBody(rectangleOf: sizeOfBox)
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.mass = 0.3
        self.addChild(box4)

        
        box5 = SKSpriteNode(texture: boxTexture)
        box5.position = CGPoint(x: self.frame.width / 3.4, y: -self.frame.height / 4)
        box5.size = CGSize(width: self.frame.width / 15, height: self.frame.height / 9)
        box5.zPosition = 0
        
        box5.physicsBody = SKPhysicsBody(rectangleOf: sizeOfBox)
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.mass = 0.3
        self.addChild(box5)
        
        
        // MARK: Ağaç ayarlama kısmı
        
        let textureTree = SKTexture(imageNamed: "tree")
        tree = SKSpriteNode(texture: textureTree)
        tree.position = CGPoint(x: -self.frame.width / 3.2 , y: -self.frame.height / 3.7)
        tree.size = CGSize(width: self.frame.width / 4, height: self.frame.height / 2.6)
        tree.zPosition = 0
        self.addChild(tree)

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
