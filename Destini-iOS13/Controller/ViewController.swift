//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //private var story: Story!
   
    var currentStory = 0
    
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.currentTitle == stories[currentStory].choice1 {
            currentStory = 1
            print("choice1Button")
        } else {
            currentStory = 2
            print("choice2Button")
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[currentStory].title
        
        choice1Button.setTitle(stories[currentStory].choice1, for: .normal)
        
        choice2Button.setTitle(stories[currentStory].choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
       

    }


}

