import UIKit

let defaults = UserDefaults.standard

defaults.set(0.32, forKey: "Volume")
defaults.set(true, forKey: "musicOn")
defaults.set("kunkun", forKey: "Cat")
defaults.set(Date(), forKey: "LastOpen")

let arrayString = ["ganteng1","ganteng2","ganteng3"]
defaults.set(arrayString, forKey: "myArray")
let arrayInt = [1,2,3]
defaults.set(arrayInt, forKey: "MyArray")
let directorykey = "keydirectory"
let directory = ["name": "kunkun", "age" : "4 Years old"]
defaults.set(directory, forKey: directorykey)




let vol = defaults.float(forKey: "Volume")
let lastOpen = defaults.object(forKey: "LastOpen")
let myArray = defaults.array(forKey: "MyArray") as! [Int]
let myDirectory = defaults.dictionary(forKey: directorykey)
