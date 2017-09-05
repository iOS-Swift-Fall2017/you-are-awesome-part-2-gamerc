//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Charlie Gamer on 8/28/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    // This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You are Fantastic!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Sweet!",
                        "You are a Beauty!",
                        "You are da Bomb!",
                        "You are so freakin cool I can't even believe it!"]
        
    var newIndex = -1
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
            
        index = newIndex
        messageLabel.text = messages[index]
        
        
       /* var randomIndex =
            Int(arc4random_uniform(UInt32(messages.count)))
        messageLabel.text = messages[randomIndex]
        */
        
        
        // messageLabel.text = messages[index]
       // if index == messages.count - 1 {
       //     index = 0
        // } else {
       //     index = index + 1
       // }
        
        
        
        //index = index + 1
       // if index == messages.count {
        //    index = 0
       // }
       
        
        
        /*
        let message1 = "You are Awesome!"
        let message2 = "You are Great!"
        let message3 = "You are Amazing"
        
        if messageLabel.text == message1  {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
        messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }
       */
    }
 

    }


