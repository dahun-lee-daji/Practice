import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfregistered: Int = 0

    
    func remainSeats() -> Int {
        return lec.maxStudent - lec.numOfregistered
    }
    mutating func register() -> Void{ //struct 내부 property 변경시키는 메소드의 경우 이와 같이 mutating 키워드를 넣어야한다.
        numOfregistered += 1
    }
    
    static let target: String = "Anybody want to learn something"
    //type property
    //type method
    
    static func 소속학원이름() -> String{
        return "fastcampus"
    }
}

var lec = Lecture(title: "ios basic")

lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()

lec.remainSeats()
Lecture.target
Lecture.소속학원이름()

struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}
// 구조체, 클래스 선언 바깥에서 추가하고 싶을 때
//  다른데서 코드가져올때 익스텐션에 집어넣으면 구분하기 좋겠다
// 제곱, 반값
extension Math {
    static func square(value: Int) -> Int{
        return value * value
    }
    
    static func half(value: Int) -> Int{
        return value/2
    }
}

//Int에 제곱, 반값 추가 가능 jump to definition = control + command + j
var value : Int = 3

extension Int {
    func square() -> Int{
        return self * self
    }
    func half() -> Int{
        return self / 2
    }
}

value.square()
value.half()
