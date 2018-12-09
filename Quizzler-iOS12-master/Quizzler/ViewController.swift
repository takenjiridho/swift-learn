//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        progressLabel.text = "\(questionNumber+1) / \(allQuestions.list.count-1)"
        scoreLabel.text = "score : \(score)"
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber+1
        nextQuestion()
        progressLabel.text = "\(questionNumber) / \(allQuestions.list.count)"
    }
    
    
    func updateUI() {
        scoreLabel.text = "score : \(score)"
        progressLabel.text = "\(questionNumber+1) / \(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
            
        }else {
            let alert  = UIAlertController(title: "Awesome", message: "You've finished All Questions, do you want to start over ? ", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "restart", style: .default, handler:{ (UIAlertAction) in
                    self.startOver()
                })
            
            alert.addAction(alertAction)
            
            present(alert, animated: true, completion: nil)

        }
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        print("question number is : \(questionNumber)" )
        print ("\(correctAnswer) == \(pickedAnswer)")
        
        if correctAnswer == pickedAnswer {
//            print("you got it!")
            score += 1
            
            ProgressHUD.showSuccess("Correct!!!")
            
        }else {
//            print("Wronggg !")
            ProgressHUD.showError("Wrong!!!")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
