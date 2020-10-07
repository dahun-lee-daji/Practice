import UIKit

//var str = "Hello, playground"

/*
let value = arc4random_uniform(100)
print("--> \(value)")

var str = "코멘트 성공햇지?"
*/


/*
 // tuple
 
let coordinates = (4, 6)

let x = coordinates.0 //4
let y = coordinates.1

//좀 더 명시적으로

let coordinateNamed = (x:2, y:3)

let x2 = coordinateNamed.x //2
let y2 = coordinateNamed.y

// 내부 데이터를 한번에 뽑아낼 때, 근데 맞약 형태가 안맞으면? coordianteNamed index가 3개, 받으려는건 2개. 아 2개만들어가나?
let (x3,y3) = coordinateNamed
x3
y3
 */


// ---- boolean
/*
let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive {
    print("이게 참이야")
}
else{
    print("그게 당근 거짓ㅁ라이지")
}

let a = 5
let b = 10

if a > b {
    print("----> a is bigger")
}
else{
    print("---> b is bigger ")
}

let name1 = "jin"
let name2 = "jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame{
    print("two people's name is same")
}
else{
    print("their name is different name1 :  \(name1) name2 :  \(name2)" ) // interpolation도 string안에 들어가야함.
}
*/


// -------- boolean keep going

/*
let name1 = "Jin"
let name2 = "Jason"

let isJason = name2 == "Jasong"
let isMale = true
let isFemale = false

let isJasonAndMale = isJason && isMale
let isJasonOrMale = isJason || isMale

let whoisman = isMale ? name2 : name1

let greetingMessage: String = isJason ? "Hello Jason" : "what the who you are?"
*/

// --------scope

var hour = 50
var payPerHour = 14500
var salary = 0

if hour>40 {
    let extraHours = hour - 40
    salary += extraHours*payPerHour*2
    hour -= extraHours
}
salary += hour*payPerHour

