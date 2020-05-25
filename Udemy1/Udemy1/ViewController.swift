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
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        oneRand = Int.random(in: 1..<6)
        twoRand = Int.random(in: 1..<6)
        dice1.image=UIImage(named: "dice\(oneRand)")
        dice2.image=UIImage(named: "dice\(twoRand)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

