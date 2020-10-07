import UIKit

//이게 옵셔널 타입 선언 데이터타입형에 ?를 붙임 할당은 그냥
var carName : String? //="테슬라" 로 할당 가능.
carName = nil
carName = "tank"

// super easy work
// make a variable that has your favorite actor

var favoriteActorName : String? = nil

// let num = Int("19") 의 타입은 뭘까?
var num = Int("19")
// 와 Int? 였다...
// "19" 는 string인데, int 로 형변환하여, optional이 됨
//아래와 같이 형변환 실패 case는 nil을 반환함.
num = Int("19gkdl")


// 고급 기능 4가지.

// Forced unwrapping            > optional 값을 꺼내서 사용할 때 강제로 꺼냄
// Optional binding (if let)    > 부드럽게 값을 꺼낸다..? _ 1
// Optional binding (guard)     > 부드럽게 값을 꺼낸다..? _ 2
// Nil coalescing               > optional 값을 꺼냈는데, 값이 없다면 default값을 반환하자.

print(carName) //  Optional("tank") --->로 출력됨.
print(carName!) //  tank --->로 출력됨.

carName = nil
//print(carName!)     //Fatal error: Unexpectedly found nil while unwrapping an Optional value: file MyPlayground.playground, line 32
                    // 값이 nil이라면 위와 같이 경고함.

if let unwrappedCarName = carName { // carName의 value가 있으면 if, 없다면 else
    print(unwrappedCarName)
} else {
    print("there is no car name")
}
/*
func stringToInt(_ value : String) -> Int{
    
    var result : Int = 0
    if let inputString = Int(value){
        result = inputString
    } else{
    }
    return result
}*/



func stringToInt(_ value : String) -> Int{
    
    var result : Int = 0
    guard let inputString = Int(value) else{
        return 0
    }
    
    result = inputString
    
    return result
}

stringToInt("갸아")
stringToInt("56")

let myCarName : String = carName ?? "Tesla"

/// challenge
// 1. 최애 음식 이름 담는 변수 작성 (String ? )
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

var myFavoriteFood : String? = nil

if let isFoodName = myFavoriteFood{
    print("\(isFoodName)")
} else{
    print("it is not food name")
}

func printNickName(_ nickName : String?){
    guard let visibleNickName = nickName else{
        print("this is not nickname")
        return
    }
    print(visibleNickName)
}

printNickName("다훈")
printNickName(nil)



