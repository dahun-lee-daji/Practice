import UIKit

// 문제 ; 가장 가까운 편의점 찾기.

// 처음 시작시.... 코드
struct location{
    let x: Int
    let y: Int
}

struct store{
    let loc: location
    let name: String
    
    let deliveryRange = 3.0
    
    func isDeliverable(userLoc: location)->Bool{
        /* 내가 짠 것.
        if (distance(current: userLoc, target: loc) < deliveryRange) {return true}
        else {return false}
        */
        //teacher
        let distanceToUser = distance(current: loc, target: userLoc)
        return distanceToUser < deliveryRange
    }
}

//현재 스토어 위치

let store1 = (loc: location(x: 3, y:4), name: "gs")
let storeStruct1 = store(loc: location(x: 3, y: 4), name: "gs")
let store2 = (loc: location(x: 4, y:6), name: "seven")
let storeStruct2 = store(loc: location(x: 4, y: 6), name: "seven")
let store3 = (loc: location(x: 1, y:7), name: "cu")
let storeStruct3 = store(loc: location(x: 1, y: 7), name: "cu")


//거리 구하는 함수

func distance( current : location, target : location) -> Double{
    
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(pow(distanceX, 2.0)+pow(distanceY, 2.0))
    
    return distance
}

// 가장 가까운 스토어 구해서 프린트하는 함수

func printClosestStore(currentLocation: location, stores: [store] ){
    var closestStoreName = String.init()
    var closestStoreDistance = Double.infinity
    var isdeliverable = false
    var distanceToShow = Double.init()
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(closestStoreDistance, distanceToStore)
        if(distanceToStore == closestStoreDistance){
            closestStoreName = store.name
            isdeliverable = store.isDeliverable(userLoc: currentLocation)
            distanceToShow = distanceToStore
        }
    }
    
    print("Closest store : \(closestStoreName) deliveralbe : \(isdeliverable) distance : \(distanceToShow)")
}


// Stores Array 세팅, 현재 내 위치 세팅
let mylocation = location(x: 2, y: 2)
let stores = [store1, store2, store3]
let storesStruct = [storeStruct1, storeStruct2, storeStruct3]

//printClosestSotre 함수 이용해서 가장 가까운 스토어 출력하기.

printClosestStore(currentLocation: mylocation, stores: storesStruct)
storeStruct1.isDeliverable(userLoc: mylocation)
storeStruct2.isDeliverable(userLoc: mylocation)
storeStruct3.isDeliverable(userLoc: mylocation)
// Improve Code
// -make Location struct
// -make Store struct -done!
