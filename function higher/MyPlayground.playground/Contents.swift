import UIKit

//오버로드

func printTotalPrice( price : Int, count : Int){
    let totalPrice = price * count
    print("int :\(totalPrice)")
}

func printTotalPrice( price : Float, count : Float){
    let totalPrice = price * count
    print(" float :\(totalPrice)")
}

printTotalPrice(price: 1.5, count: 2.3)
printTotalPrice(price: 2, count: 3)

// in-out parameter
//parameter는 복사되어서 온 값이다 = constant 그래서 value += 1 을 하는건 오류
//직접 변경하고 싶을땐, inout 키워드를 사용해라

var value = 3
func increamentAndPrint(_ value  : inout Int){
    value += 1
    print("\(value)")
}
increamentAndPrint(&value)

// --- Function as a param

func add( _ a : Int, _ b :Int)->Int{
    
    return a + b
}

func substract ( _ a : Int, _ b :Int)->Int{
    return a - b
}

var function = add //이렇게 변수에 함수를 할당 가능.
function(4,2) //그리고 이렇게 씀;
function = substract
function(4,2)

// 이를 통해서 함수 값이 함수의 파라미터로 넘겨 질 수 있다.

func printresult (_ function: (Int, Int) -> Int  ,_ a : Int, _ b : Int ) -> Int{
    let result = function(a,b)
    return result
}

print("\(printresult(add, 6, 2))")
print("\(printresult(substract, 6, 2))")
