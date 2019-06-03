//
//  ViewController.swift
//  Dice
//
//  Created by Varun Gannavarapu on 6/2/19.
//  Copyright © 2019 Varun Gannavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Array for dice images
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //Define variables for random output
    var randomDiceIndexOne: Int=0
    var randomDiceIndexTwo: Int=0
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Action that runs when button is pressed
        updateDiceImages()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    //Define function for updating dice images
    func updateDiceImages(){
        randomDiceIndexOne = Int.random(in: 0 ... 5)
        randomDiceIndexTwo = Int.random(in: 0 ... 5)
        
        print(randomDiceIndexOne)
        
        diceImageViewOne.image = UIImage(named: diceArray[randomDiceIndexOne] )
        diceImageViewTwo.image = UIImage(named: diceArray[randomDiceIndexTwo])
    }
    
}

