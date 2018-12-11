//
//  main.swift
//  Classes and Object
//
//  Created by muhammad ridho on 12/11/18.
//  Copyright © 2018 muhammad ridho. All rights reserved.
//

import Foundation

let myCar = Car()

let poorCar = Car(customColour: "yellow", numberOfSeat: 2)

poorCar.colour = "silver"

print(poorCar.colour)
print(poorCar.numberOfseats)
print(myCar.typeOfCar)

poorCar.carDrive()

let mySelfCar = SeftDriveCar()

mySelfCar.carDrive()

mySelfCar.destination = "to mesjid"

//option 1
if let u = mySelfCar.destination {
    print (u)
}

//optin 2
if mySelfCar.destination != nil {
    print (mySelfCar.destination!)
}




print("\(mySelfCar.typeOfFuel(fuel: .Rumput))")
