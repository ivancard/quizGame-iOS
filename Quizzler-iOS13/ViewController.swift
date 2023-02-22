//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One.", answer: "True"),
        Question(text: "Three + Eight is less than Ten.", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    private func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
    
    @IBAction func answerButtonAction(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else {return}
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("correctooo")
        } else {
            print("incorrecto")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
}

