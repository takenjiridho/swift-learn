//
//  LanuchScreenVC.swift
//  listriqu
//
//  Created by muhammad ridho on 2/24/19.
//  Copyright © 2019 muhammad ridho. All rights reserved.
//

import UIKit

class LanuchScreenVC: UIViewController {

    var timer = Timer()
    
    @IBOutlet weak var lblInstalir: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lblInstalir.text = "Quick Instalasi"
        lblInstalir.textColor = UIColor.white
        
        timer = Timer.scheduledTimer(withTimeInterval: 3.0 , repeats: false, block: {_ in
            self.goToMainScreen()
        })
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func goToMainScreen() {
        
        timer.invalidate()
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
    
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }

}
