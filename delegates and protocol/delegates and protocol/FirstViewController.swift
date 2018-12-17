//
//  ViewController.swift
//  delegates and protocol
//
//  Created by muhammad ridho on 12/15/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanRecive {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelFirst: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            labelFirst.text = "Hey"
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sendDataForwards" {
            let destVC2 = segue.destination as! SecondViewController
            destVC2.datafromFirstVC = textField.text
            destVC2.delegate = self
        }
    }
    
    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    func dataReceive(data: String) {
        labelFirst.text = data
    }
    

}

