import UIKit


let closedRange = 0...11

for i in closedRange {

    switch i {
    case 0:
        print("num : \(i)")
    case 4...6:
        print("4~6 : \(i)")
    case 10 :
        print("num : \(i)")
    default:
        print("debris :  \(i)")
    }
}

let pet = "bird"

switch pet {
case "dog","cat", "bird":
    print("it is pet")
default:
    print("i don know what it is")
}
 
//
//let num = 20
//
//switch num {
//case _ where num % 2 == 0:
//    print("it is even number")
//default:
//    print ("it is odd number")
//}
//
//let coordinate = (x: 10, y : 10)
//
//switch coordinate {
//case (0,0):
//    print("원점이네요")
//case (_,0):
//    print("x축이네요 x: \(coordinate.x)")
//case (0,_):
//    print("y축이네요 y: \(coordinate.y)")
//case (_,_) where coordinate.x == coordinate.y:
//    print(" linear x=y  point: \(coordinate.y)")
//default:
//    print("어딘가겠지 x,y : \(coordinate)")
//
//}
