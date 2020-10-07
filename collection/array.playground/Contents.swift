import UIKit

// ----> Array 기초 -1

let evenNumbers : [Int] = [2,4,6,8]
var evenNumbers2 : Array<Int> = [] //둘이 같은 거임

//evenNumbers.append(10) //evenNumbers가 let이기 떄문에 불가능함.

evenNumbers2.append(10)
evenNumbers2 += [12,14,16]
evenNumbers2.append(contentsOf: [18,20]) // 10...14 로 연속한 수를 넣을 수도 있다.

evenNumbers2.isEmpty //비어있는지 확인.
evenNumbers2.count //갯수 확인.

print(evenNumbers2.first) //반환값이 optional 왜냐하면 array가 비어있을 수도 있으니까
evenNumbers2.last

evenNumbers2.min() // min max를 찾을 수 있는데 min max를 찾을 수 없는 array 일 수도 있으니까, optional

var firstIten = evenNumbers2[0]
var secondItem = evenNumbers2[1]
var sixthitem = evenNumbers2[evenNumbers2.count - 1]

//var twentithItem = evenNumbers2[19] 당연히 에러남.


//---> array 실습 -2

var firstThree = evenNumbers2[0...2] // can input range as indexes
evenNumbers2.contains(3)
evenNumbers2.contains(10) //이런 프로퍼티는 정규 문서를 읽자.

evenNumbers2.insert(0, at: 0) // 0번째 index에 0을 넣는다. 나머지는 인덱스가 1개씩 밀림.
//어레이 비우는 방법
// evenNumbers2.removeAll()
// evenNumbers2 = []
//하나의 어레이 지우는 방법
// evenNumbers2.remove(at: 0)

evenNumbers2[0...2] = [-4,-2,0]
evenNumbers2
evenNumbers2.swapAt(0, evenNumbers2.count - 1)


for num in evenNumbers2 {
    print(num)
}
for (index, num) in evenNumbers2.enumerated(){ //enumerated가 (idx, num) 형식으로 만들어서 반환해줌. enumerated를 option키 누르고 확인해 볼 것.
    print("index : \(index), value : \(num)")
}

let firstThreeRemoved = evenNumbers2.dropFirst(3) //원본 손상 안하고 앞의 3개만 떨어서 보여줌
print(firstThreeRemoved)
let lastThreeRemoved = evenNumbers2.dropLast(3)
print(lastThreeRemoved)
let firstThree1 = evenNumbers2.prefix(3) // 원본 손상 없이 앞의 3개만 보여줌
print(firstThree1)
let lastThree = evenNumbers2.suffix(3)
print(lastThree)
