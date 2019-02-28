//
//  ViewController.swift
//  listriqu
//
//  Created by muhammad ridho on 2/24/19.
//  Copyright © 2019 muhammad ridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPageTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblPageTitle.text = "Page Login"
        lblPageTitle.textColor = UIColor.black
    }


}

