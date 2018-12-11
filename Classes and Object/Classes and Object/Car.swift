//
//  Car.swift
//  Classes and Object
//
//  Created by muhammad ridho on 12/11/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var colour = "Black"
    var numberOfseats = 2
    var typeOfCar : CarType = .Hatchback
    
    init() {
        
    }
    
    convenience init(customColour : String, numberOfSeat : Int) {
        self.init()
        colour = customColour
        numberOfseats = numberOfSeat
    }
    
    func carDrive()  {
        print("start engine")
    }
    
}
