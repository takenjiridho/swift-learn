import UIKit

func calculator(n1: Int, n2:Int ) -> Int {
    return add(v1: n1, v2: n2)
}
func add(v1: Int, v2:Int ) -> Int {
  return v1+v2
}
//calculator(n1: 10, n2: 20)
func multiply(v1: Int, v2:Int ) -> Int {
    return v1*v2
}

func calculator(n1: Int, n2:Int, operation: (Int,Int ) -> Int ) -> Int {
    return operation(n1,n2)
}

//calculator(n1: 10, n2: 20, operation: add)
//calculator(n1: 10, n2: 20, operation: multiply)

//{ (v1: Int, v2:Int ) -> Int  in
//    return v1*v2
//}

//move to operation

//calculator(n1: 10, n2: 20, operation: { (v1: Int, v2:Int ) -> Int  in
//    return v1*v2
//})

//1 line
calculator(n1: 10, n2: 20, operation: { (nv1, nv2 ) in nv1*nv2 } )

//user charater $
let c = calculator(n1: 10, n2: 20, operation: { $0 * $1 } )
//print(c)

//user charater $ simply
let cc = calculator(n1: 10, n2: 20) {$0 * $1}
//print(cc)

let array = [1,2,3,6,5]

func addOne (n1 :Int) -> Int {
    return n1+1
}

//penambahan nilai array
//array.map(addOne)


//penambahan nilai array simple line
//array.map({(n1) -> Int in n1+1})


//penambahan nilai array using $
print(array.map({$0+1}))

let array2 = [5,6,8,2,4,1]

//conver to arrayString
let newArray = array2.map{"\($0)"}

print(newArray)

//Closuer Expression Syntax
//{(parameter) -> returnType in Statements }












