import UIKit

var str = "Hello, playground"

//func fibonacci(until: Int) -> String {
//    let fibonacciNumber = [0,1,1,2,3,5,8]
//    var fibonacciNum = ""
//
//    for n in fibonacciNumber{
//        if n < until {
//            fibonacciNum += "\(n),"
//        }else if n == until {
//            fibonacciNum += "\(n)"
//        }
//    }
//    return "fibonacci number is " + fibonacciNum
//}
//
//print(fibonacci(until: 5))

func fibonacci(until n: Int) {
//    let fibonacciNumber = [0,1,1,2,3,5,8]
//    var fibonacciNum = ""
    
    var num1 = 0
    var num2 = 1
    
    for _ in 1...n{
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
//    return "fibonacci number is " + fibonacciNum
}

fibonacci(until: 5)

//projecteuler.net --solved by your and your language programming
