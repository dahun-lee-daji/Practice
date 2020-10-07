import UIKit

/*
func printMyName(){
    print("---> My name is Dahun")
}
printMyName()


//param 1개 받아서 10 곱해서 출력한다.
func printMultipleOfTen(value: Int){
    print("---> \(value) * 10 = \(10 * value)")
}
printMultipleOfTen(value: 10)

//param 2개
//물건 값과 갯수를 받아서 전체 금액을 출력
func printTotalPrice(productNumber: Int, productCharge: Int){
    print("물건 값 = 갯수(\(productNumber)개) * 물건 가격(\(productCharge)원) = \(productCharge * productNumber)")
}
printTotalPrice(productNumber: 5, productCharge: 100)

//productNumber: 5 와 같이 어떤 param인지 안쓸려면 _ 를 넣어라
func noParamName(_ value : Int){
    print("value : \(value)")
}
noParamName(100)

//심지어 한글로도 param 이름을 지정 할 수도 있음.
func otherParamName(갯수 value : Int){
    print("value : \(value)")
}
otherParamName(갯수 :50)
 */




//function에 default param을 넣을 수 있다. 물론 price에 값을 집어넣을 수도 있음

func printTotalPriceDefaultValue(price : Int = 1500, count: Int){
    print("Total Price: \(price * count)")
}
printTotalPriceDefaultValue(count: 5)
printTotalPriceDefaultValue(price: 500, count: 5)

func totalPrice(price : Int, count : Int) -> Int{
    return price * count
}

print(" total Price : \(totalPrice(price: 1000, count: 8))")

