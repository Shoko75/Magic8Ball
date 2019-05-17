//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 橋本 翔子 on 2018/12/07.
//  Copyright © 2018 Shoko Hashimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
    
        var randamBallNumber : Int = 0
        randamBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randamBallNumber])
    }
}

