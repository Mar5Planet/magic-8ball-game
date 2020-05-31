//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by admin on 9/14/19.
//  Copyright © 2019 Mar. All rights reserved.
//

import UIKit
var randomizer = 0
let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
class ViewController: UIViewController {
    @IBOutlet weak var magicView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    magic()
        
    }
    @IBAction func MagicButton(_ sender: Any) {
    magic()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        magic()
    }
    func magic() {
        randomizer = Int.random(in: 0 ... 4)
        magicView.image = UIImage(named: ballArray[randomizer])
    }

}

