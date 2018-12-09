//
//  Question.swift
//  Quizzler
//
//  Created by muhammad ridho on 12/8/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer: Bool
    
    init (text : String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
