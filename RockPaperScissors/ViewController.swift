//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Sam Meech-Ward on 2017-08-17.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateRandomSign() -> String {
        // Generate a random number
        let randomNumber = arc4random_uniform(3)
        
        // Create a new empty string variable to hold the computer's sign
        var computerSign = ""
        
        // Set the computer sign to one of the three emojis
        if (randomNumber == 0) {
            computerSign = "✋"
        } else if (randomNumber == 1) {
            computerSign = "👊"
        } else if (randomNumber == 2) {
            computerSign = "✌️"
        }
        
        return computerSign
    }

    @IBAction func playRock(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        if iPhoneSign == "✌️" {
            outcomeLabel.text = "You: 👊\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
        } else if iPhoneSign == "✋" {
            outcomeLabel.text = "You: 👊\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
        } else if iPhoneSign == "👊" {
            outcomeLabel.text = "You: 👊\niPhone: " + iPhoneSign + "\nIt's a 👔"
        }
    }

    @IBAction func playScissors(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        if iPhoneSign == "✋" {
            outcomeLabel.text = "You: ✌️\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
        } else if iPhoneSign == "👊" {
            outcomeLabel.text = "You: ✌️\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
        } else if iPhoneSign == "✌️" {
            outcomeLabel.text = "You: ✌️\niPhone: " + iPhoneSign + "\nIt's a 👔"
        }
    }
    
    
    @IBAction func playPaper(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        if iPhoneSign == "👊" {
            outcomeLabel.text = "You: ✋\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
        } else if iPhoneSign == "✌️" {
            outcomeLabel.text = "You: ✋\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
        } else if iPhoneSign == "✋" {
            outcomeLabel.text = "You: ✋\niPhone: " + iPhoneSign + "\nIt's a 👔"
        }
    }
}

