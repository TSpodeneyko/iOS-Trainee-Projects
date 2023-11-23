//
//  Question.swift
//  Quizzler-trainee-project
//
//  Created by Timofey Spodeneyko on 13.11.2023.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
