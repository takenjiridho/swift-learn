//
//  ViewController.swift
//  Dicee
//
//  Created by muhammad ridho on 12/4/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arrayImage = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randumDiceIndex1: Int = 0
    var randumDiceIndex2: Int = 0
    
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    @IBAction func rollButtonPresed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    func updateDiceImages(){
        
        randumDiceIndex1 = Int.random(in: 0 ... 5)
        randumDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(randumDiceIndex1)
        
        diceeImageView1.image = UIImage.init(named: arrayImage[randumDiceIndex1])
        diceeImageView2.image = UIImage.init(named: arrayImage[randumDiceIndex2])

    }
}

