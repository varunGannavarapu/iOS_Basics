//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Varun Gannavarapu on 6/2/19.
//  Copyright © 2019 Varun Gannavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Define variables and constants
    let answers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var rand : Int = 0
    
    
    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ask()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ask()
    }
    
    @IBAction func askButton(_ sender: Any) {
        ask()
    }
    
    func ask(){
        rand = Int.random(in: 0 ... 4)
        eightBallImage.image = UIImage(named: answers[rand])
    }
}

