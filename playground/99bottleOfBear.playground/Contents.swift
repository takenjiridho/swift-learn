import UIKit

var str = "Hello, playground"

func beerSongForThisManyBottles(_ totalNumberOfBottles: Int) -> String{
    var lyric: String = ""
    var v: Int = 0
    for n in (1...totalNumberOfBottles).reversed() {
        v = v+1
        if n == 1 {
            lyric += "\(n) bottles of beer on the wall, \(n) bottles of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n"
            lyric += "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more,\(v) bottles of beer on the wall.\n\n"
        }else {
            lyric += "\(n) bottles of beer on the wall, \(n) bottles of beer.\nTake one down and pass it around, \(n-1) bottles of beer on the wall.\n\n"
        }
        
    }
    return lyric
}

print(beerSongForThisManyBottles(99))
