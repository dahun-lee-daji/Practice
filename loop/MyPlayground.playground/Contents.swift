import UIKit
import Foundation

let closedRangee = 0...10
let closedRange = 0...8
let halfClosedRange = 0..<10

var sum = 0
for i in closedRangee{
    print("---> \(i)")
    sum+=i
}
print("total sum ---> \(sum)")
sum=0
for i in halfClosedRange{
    print("---> \(i)")
    sum+=i
}
print("total half closed range sum ---> \(sum)")


var sinValue:CGFloat = 0
for i in closedRange{
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Jason"
for _ in closedRangee {
    print(name)
}

for i in closedRangee {
    if i % 2 == 0 {
        print("--->짝수 i : \(i)")
    }
}

for i in closedRangee where i % 2 == 0 {
    print("--->where 짝수 i : \(i)")
}
