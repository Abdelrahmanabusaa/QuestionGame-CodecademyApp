//
//  QuestionModel.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//

import Foundation

struct Question: Hashable {
    
    let questionText: String
    let possibleAnswers: [String]
    let indexOfRightAnswer: Int
    
    static let Questions : [Question] = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 indexOfRightAnswer: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 indexOfRightAnswer: 0),
        Question(questionText: "What was iOS originally called?",
                 possibleAnswers: [
                    "Swift OS",
                    "Apple OS",
                    "iPhone OS",
                    "iPod OS"
                 ],
                 indexOfRightAnswer: 2),
        Question(questionText: "Computers use the digits zero and one to store data.  What is this system called?",
                 possibleAnswers: [
                    "Binary",
                    "Ternary",
                    "Decimal",
                    "Fraction"
                 ],
                 indexOfRightAnswer: 0),
        Question(questionText: "In what year was Swift 1.0 released?",
                 possibleAnswers: [
                    "2010",
                    "2013",
                    "2014",
                    "2020"
                 ],
                 indexOfRightAnswer: 2),
        Question(questionText: "Who was the first programmer?",
                 possibleAnswers: [
                    "Alan Turing",
                    "Ada Lovelace",
                    "Guido van Rossum",
                    "Dennis Ritchie"
                 ],
                 indexOfRightAnswer: 1),
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Ant",
                    "Beetle",
                    "Moth",
                    "Fly"
                 ],
                 indexOfRightAnswer: 2),
        Question(questionText: "In what year was the SwiftUI framework introduced?",
                 possibleAnswers: [
                    "2015",
                    "2016",
                    "2018",
                    "2019"
                 ],
                 indexOfRightAnswer: 3),
        Question(questionText: "What language did iOS developers use before Swift?",
                 possibleAnswers: [
                    "Objective-C",
                    "Python",
                    "Typescript",
                    "Java"
                 ],
                 indexOfRightAnswer: 0),
        Question(questionText: "What version of iOS introduced dark mode?",
                 possibleAnswers: [
                    "iOS 10",
                    "iOS 11",
                    "iOS 12",
                    "iOS 13"
                 ],
                 indexOfRightAnswer: 3),
    ]
    
}

