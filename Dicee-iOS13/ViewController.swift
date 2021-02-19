//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    @IBOutlet weak var rollCountLabel: UILabel!
    @IBOutlet weak var equalsDicesCountLabel: UILabel!
    
    var rollCount = 0
    var equalsDicesCount = 0
    
    @IBAction func rollButton(_ sender: UIButton) {
        rollDices()
    }
    
    func rollDices() {
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        leftDiceImageView.image = dices.randomElement()
        rightDiceImageView.image = dices.randomElement()
        
        rollCount += 1
        
        if(leftDiceImageView.image == rightDiceImageView.image){
            equalsDicesCount += 1
            setBorders()
        } else {
            clearBorders()
        }
        equalsDicesCountLabel.text = "Equals dices: \(equalsDicesCount)"
        rollCountLabel.text = "Roll count: \(rollCount)"
    }
    
    func clearBorders(){
        leftDiceImageView.layer.borderWidth = 0
        rightDiceImageView.layer.borderWidth = 0
    }
    
    func setBorders(){
        leftDiceImageView.layer.masksToBounds = true
        leftDiceImageView.layer.borderWidth = 5
        leftDiceImageView.layer.cornerRadius = 5
        leftDiceImageView.layer.borderColor = #colorLiteral(red: 1, green: 0.7389414613, blue: 0.07644330912, alpha: 1)
        rightDiceImageView.layer.masksToBounds = true
        rightDiceImageView.layer.borderWidth = 5
        rightDiceImageView.layer.cornerRadius = 5
        rightDiceImageView.layer.borderColor = #colorLiteral(red: 1, green: 0.7389414613, blue: 0.07644330912, alpha: 1)
    }
}

