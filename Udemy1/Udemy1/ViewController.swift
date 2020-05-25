//
//  ViewController.swift
//  Udemy1
//
//  Created by Rohan Ghosh on 23/05/20.
//  Copyright © 2020 Rohan Ghosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var oneRand: Int=0
    var twoRand: Int=0
    
    //Arrays
    let diceArray = ["dice1","dice2","dice3","dice4","dice5", "dice6"]
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    /**
     Method to update the dice image
     */
    func updateDiceImage() {
        oneRand = Int.random(in: 1..<6)
        twoRand = Int.random(in: 1..<6)
        dice1.image=UIImage(named: diceArray[oneRand])
        dice2.image=UIImage(named: diceArray[twoRand])
    }
    
    @IBAction func roll(_ sender: Any) {
        updateDiceImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
        
    }


}

