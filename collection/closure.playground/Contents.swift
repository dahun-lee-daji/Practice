import UIKit


var multiplyClosure1: (Int, Int) -> Int = { (a: Int, b:Int)->Int in
    return a * b
    
}
//1을 간추리면 2 이정도가 가장 나은듯 코드를 읽을 때 의미 파악도 되고.
var multiplyClosure2: (Int, Int) -> Int = { a, b in
    return a * b
}

//인덱스로도 할 수 있음.
var multiplyClosure3: (Int, Int) -> Int = {
    return $0 * $1
}


//리턴도 줄일 수 있음
var multiplyClosure4: (Int, Int) -> Int = { $0 * $1 }

let result = multiplyClosure4(4,2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int)->Int)->Int{
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 2, b: 5, operation: multiplyClosure4)

var addClosure : (Int, Int) -> Int = {a,b in
    return a + b
}


operateTwoNum(a: 2, b: 5, operation: addClosure)

//즉흥으로 짜넣은 closure
operateTwoNum(a: 9, b: 3){
    a, b in return a/b
}


let voidClosure : () -> Void={
    print("void")
}


//capturing value
let numberincrementer : ( Int) -> Int = {
    return $0 + 1
}
if true{
    var insideNumber = 3
    numberincrementer(insideNumber)
}
insideNumber


var count = 0
let incrementer = {
    count += 1
}
incrementer()
incrementer()
incrementer()
incrementer()
count
