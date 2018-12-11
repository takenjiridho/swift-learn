//
//  SelfDrivingCar.swift
//  Classes and Object
//
//  Created by muhammad ridho on 12/11/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import Foundation

enum Fuel {
    case Bensin
    case Nasi
    case Solar
    case Rumput
}

class SeftDriveCar : Car {

    var destination : String?  // = "to masjid taqwa"
    
    override func carDrive() {
//        super.carDrive()
        print("start engine and go")
    }
    
    func typeOfFuel(fuel : Fuel) -> String {        
        var b : String = ""
        
        if fuel == .Bensin {
            b = "Bensin"
        }else {
            b = "Bensol"
        }
        return "ogut pake Fuel \(b)"
    }
    
    
}
