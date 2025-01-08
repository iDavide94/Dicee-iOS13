//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceSides: Array<UIImage?> = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.image = diceSides[0]
        diceImageViewTwo.image = diceSides[0]
    } 
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Roll button pressed!")
        
        diceImageViewOne.image = diceSides.randomElement()!
        diceImageViewTwo.image = diceSides.randomElement()!
    }
}

