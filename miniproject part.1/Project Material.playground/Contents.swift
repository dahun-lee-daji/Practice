
/*
 내가 좋아하는 이상형 찾기!
 
 목표: 이상형인지 아닌지를 알려주는 함수 만들기
 
 사람의 height, age, weeklyFreetime, numberOfHouses를 가지고
 총합이 25점이 넘으면 이상형으로 판단하는 함수를 만들어 보아요.
 
 Age를 비교할때는 switch를 써주세요!
 
 ----height----
 키는 160 이상이면 10점
 150~160 사이이면 5점
 150이하는 0점
 
 ----age----
 나이는 28~34사이에 있으면 10점
 35~45사이이면 5점
 28미만 혹은 40이 넘으면 0점
 
 ----numberOfHouses----
 집은 있으면 좋고 없어도 괜찮습니다.
 집이 있으면 10점 가산점이 붙습니다.
 
 총 합이 20이상 이면 True, 아니면 False인 함수를 만들어주세요.
*/

import UIKit

class Person {
    let height: Float
    let age: Int
    let numberOfHouses: Int?
    
    //TODO: 생성자를 만들어주세요.
    init(height: Float, age: Int, numberOfHouses: Int?) {
        self.height = height
        self.age = age
        self.numberOfHouses = numberOfHouses
    }
}

func calculateScoreWithHeight(inputHeight: Float) -> Int{
    var score: Int = 0
    
    switch inputHeight {
    case _ where inputHeight <= 150:
        score = 0
        print("inputHeight : \(inputHeight), score : \(score)")
        break;
    case _ where (inputHeight < 150)||(inputHeight < 160):
        score = 5
        print("inputHeight : \(inputHeight), score : \(score)")
        break;
    case _ where inputHeight >= 160:
        score = 10
        print("inputHeight : \(inputHeight), score : \(score)")
        break;
    default:
        print("in func calculateScoreWithHeight, default case is called ")
        break;
    }
    
    return score
}


func calculateScoreWithAge(inputAge: Int) -> Int{
    var score: Int = 0
    
    switch inputAge {
    case _ where (inputAge < 28)||(inputAge > 40):
        score = 0
        print("inputAge : \(inputAge), score : \(score)")
        break;
    case 35...45:
        score = 5
        print("inputAge : \(inputAge), score : \(score)")
        break;
    case 28...34:
        score = 10
        print("inputAge : \(inputAge), score : \(score)")
        break;
    default:
        print("in func calculateScoreWithAge, default case is called ")
        break;
    }
    
    return score
}

func calculateScoreWithHouse(inputHouse: Int?) -> Int{
    var score: Int = 0
    
    if let houseCount = inputHouse {
        if houseCount >= 1 {
            score = 10
            print("inputHouse : \(inputHouse), score : \(score)")
        }
    } else{
        print("in func calculateScoreWithHouse, Control else is called ")
    }
    
    return score
}

func isThisPersonMyRomance(p: Person) -> Bool {
    var total = 0
    
    //TODO: 점수 로직이 들어가서 총 점수를 계산해 주시고, 그에따라 Bool값을 리턴해주세요.
    total += calculateScoreWithAge(inputAge: p.age)
    total += calculateScoreWithHeight(inputHeight: p.height)
    total += calculateScoreWithHouse(inputHouse: p.numberOfHouses)
    
    print("total score : \(total))")
    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
    if total >= 20 {
        return true
    }
    
    return false
}

// Test
// Person을 하나 생성해주세요. 값은 임의로 정하셔도 됩니다.
isThisPersonMyRomance(p: Person(height: 150, age: 27, numberOfHouses: 1))
isThisPersonMyRomance(p: Person(height: 149.9, age: 28, numberOfHouses: nil))
isThisPersonMyRomance(p: Person(height: 150.1, age: 34, numberOfHouses: 0))
isThisPersonMyRomance(p: Person(height: 159.9, age: 35, numberOfHouses: -1))
isThisPersonMyRomance(p: Person(height: 160, age: 45, numberOfHouses: 2))
isThisPersonMyRomance(p: Person(height: 160.1, age: 46, numberOfHouses: 3))
isThisPersonMyRomance(p: Person(height: -1, age: 40, numberOfHouses: 4))
isThisPersonMyRomance(p: Person(height: -1, age: 41, numberOfHouses: nil))


isThisPersonMyRomance(p: Person(height: 160.1, age: 29, numberOfHouses: 1))
