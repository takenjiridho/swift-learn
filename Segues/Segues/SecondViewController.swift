//
//  SecondViewController.swift
//  Segues
//
//  Created by muhammad ridho on 12/15/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var textFromFirstCtr:  String?
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label.text = textFromFirstCtr
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
