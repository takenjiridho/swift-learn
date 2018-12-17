//
//  ViewController.swift
//  Segues
//
//  Created by muhammad ridho on 12/15/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondView", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToSecondView" {
            let destSecondVC = segue.destination as! SecondViewController
            
            destSecondVC.textFromFirstCtr = textField.text!
        }
    }
}

