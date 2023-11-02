//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var currentStory = 0
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    mutating func nextStory(userChoice: String) {
        if userChoice == stories[currentStory].choice1 {
            currentStory = 1
            print("choice1Button")
        } else {
            currentStory = 2
            print("choice2Button")
        }
        
    }
    
    
    func getTitle() -> String {
        return stories[currentStory].title
    }
    
    func getChoiceOne() -> String {
        return stories[currentStory].choice1
    }
    
    func getChoiceTwo() -> String {
        return stories[currentStory].choice2
    }
}


