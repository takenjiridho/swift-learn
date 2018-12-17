//
//  SecondViewController.swift
//  delegates and protocol
//
//  Created by muhammad ridho on 12/15/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

protocol CanRecive {
    func dataReceive(data : String)
}

class SecondViewController: UIViewController {

    var delegate : CanRecive?
    
    var datafromFirstVC : String?
    
    
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSecond.text = datafromFirstVC
    }
    

    @IBAction func buttonBackPressed(_ sender: Any) {
        
        delegate?.dataReceive(data: textField.text!)
        dismiss(animated: true, completion: nil)
        
    }
}
