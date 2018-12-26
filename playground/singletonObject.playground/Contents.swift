import UIKit

let defaults = UserDefaults.standard
let shareURLSession = URLSession.shared

class Car {
    var colour = "red"
    
}

let myCar = Car()
myCar.colour = "bule"

let yourcar = Car()
print(yourcar.colour)


class Pen {
    var colour = "blue"
    
    static let singletonPen = Pen()
}

let myPen = Pen.singletonPen
myPen.colour = "black"

let yourPen = Pen.singletonPen
print(yourPen.colour)

class A {
    init() {
        Pen.singletonPen.colour = "yellow"
    }
}

class B {
    init() {
        print(Pen.singletonPen.colour)
    }
}

let a = A()
let b = B()



