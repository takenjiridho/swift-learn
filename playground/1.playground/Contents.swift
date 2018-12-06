
import UIKit

func rupa(tipe: String, brp: Int) -> String {
    print("rupa wajaku adalah : \(tipe) ")
    
    var kata: String
    
    if brp == 1 {
        kata = "one"
    }else if brp == 2 {
        kata = "two"
    }else if brp == 3 {
        kata = "tree"
    }else if brp == 4 {
        kata = "four"
    }else if brp == 5 {
        kata = "five"
    }else if brp == 6 {
        kata = "six"
    }else if brp == 7 {
        kata = "tujuh"
    }else if brp == 8 {
        kata = "eight"
    }else if brp == 9 {
        kata = "nine"
    }else {
        kata = "ten"
    }

    print("sebutkan ini berapa \(brp) : katakan \(kata) ")
    return "baiklah \(tipe)"
}
let b = rupa(tipe: "sendu", brp: 2)
print(b)


func loveCalculator(yourName: String, theirName:String) -> String {
   
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "score kamu \(loveScore) cocok selamat yaaa "
        
    }else if loveScore > 40 && loveScore <= 80 {
        return "score kamu \(loveScore)  sepadan niyyyy eee "
    }else{
        return "score kamu \(loveScore) ga cocok bang ganti y laen"
    }
}

print(loveCalculator(yourName: "ridho", theirName: "anue"))
