//
//  ViewController.swift
//  magicBall
//
//  Created by Vicky Kuo on 2019/9/14.
//  Copyright © 2019 Vicky Kuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
    }

    @IBOutlet weak var ball: UIImageView!
    
    var random:Int = 0
    @IBAction func button(_ sender: UIButton) {
        
        changeImage()
    }
    
    let images = ["ball1","ball2","ball3","ball4","ball5"]
    func changeImage(){
        random = Int.random(in: 0...4 )
        ball.image = UIImage(named: images[random])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
         changeImage()
    }
}

