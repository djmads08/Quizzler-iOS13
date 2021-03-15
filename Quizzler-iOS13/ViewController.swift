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
    
    let quiz = [["Question 1", "True"], ["Question 2", "True"], ["Question 3", "True"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // updateUI displays the first question.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // When answerButtonPressed is engaged, the questionNumber (used to pull a specific string from the [quiz] array is incremented.
        // updateUI function is called to display the new question label for the user.
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        // Function changes the Question to the new questionNumber in the array of [quiz].
        questionLabel.text = quiz[questionNumber]
    }
    
    
}

