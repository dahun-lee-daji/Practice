import UIKit

/*
 { (param) -> return type in
        statements
            ....
 }
 */


// Example 1: cho simple Closure

var exampleClosure1 = {
    
}
exampleClosure1()


// Example 2: 코드블록을 구현한 closure

var exampleClosure2 = {
    print("hello")
}
exampleClosure2()


// Example 3: 인풋 파라미터를 받는 closure

var exampleClosure3 : (String) -> Void = { name in
    print("ma name is \(name)")
}
exampleClosure3("dahun")

// Example 4: 값을 리턴하는 Closure
var exampleClosure4 : (Int) -> (Int) = { num in
    return num + 1
}

exampleClosure4(1)

// Example 5: Closure를 파라미터로 받는 함수 구현

func exampleClosure5(num : Int, closure : (Int)->(Int) ) -> (Int) {
    return closure(num)
}
exampleClosure5(num: 3, closure: exampleClosure4)

func someSimpleFunction ( choSimpleClosure : () -> Void){
    print("함수가 호출함")
    choSimpleClosure()
}
someSimpleFunction(choSimpleClosure: {
    print("클로저가 호출함.")
})


// Example 6: Trailing Closure

func someSimpleFunction2 (message : String, choSimpleClosure : () -> Void){
    print("함수가 호출함 메세지 : \(message)")
    choSimpleClosure()
}


someSimpleFunction2(message: "다훈다훈", choSimpleClosure: {
    print("클로저가 호출함.")
})

someSimpleFunction2(message: "다훈다훈" ) {
    print("클로저가 호출함.")
}

//위 둘은 같은 내용임. trailing closure 특성임 이게, param이 많이들어가면 보기 안좋으니까, 코드 계층이 심해지므로.
// 마지막 param이 closure일 때 사용가능.
