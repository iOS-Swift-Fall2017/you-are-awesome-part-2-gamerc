//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Charlie Gamer on 8/28/17.
//  Copyright © 2017 Charlie Gamer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //MARK: - Properties
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 4
    @IBOutlet weak var awesomeImage: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    @IBOutlet weak var soundSwitch: UISwitch!
    
    
    // This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Functions
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        // Can we load in a sound name
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be layed as a sound")
            }
            
        } else {
            // if reading in the NSDataAsset didn't work, tell user / report the error
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    // MARK: - Actions

    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundNumber != -1 {
            awesomePlayer.stop()
        
    }
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You are Fantastic!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Sweet!",
                        "You are a Beauty!",
                        "You are da Bomb!",
                        "You are so freakin cool I can't even believe it!"]
        
        // Show a message
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // Show an image
        
        awesomeImage.isHidden = false
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        // Sound Switch
        
        if soundSwitch.isOn  {
           
            // Get a random number to use for the sound name file
            
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
            
            // Play a sound
            
            let soundName = "sound\(soundNumber)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
        
    

        
        
        
        
        
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


