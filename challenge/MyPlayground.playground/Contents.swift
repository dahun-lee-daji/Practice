import UIKit
//
//1. 성 이름을 받아서 fullname을 출력하는 함수 만들기
//2. 1번에서 만든 함수인데, 파라미터 이름ㅇ르 제거하고. fullname을 출력하는 함수만들기
//3. 성, 이름을 받아서 fullane return하는 함수 만들기

func one (firstname : String, lastname : String){
    let fullName = firstname + lastname
    print("one :\(fullName)")
}
func two ( _ firstname : String, _ lastname : String){
    let fullName = firstname + lastname
    print("two : \(fullName)")
}
func three (성 firstname : String, 이름 lastname : String) -> String{
    let fullName = firstname + lastname
    return fullName
}

let firstName = "이"
let lastName = "다훈"

one(firstname: firstName, lastname: lastName)
two(firstName,lastName)
let fullName = three(성: firstName, 이름: lastName)
print(" three : \(fullName)")
