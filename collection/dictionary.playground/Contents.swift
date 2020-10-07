import UIKit

//두가지 선언 방법
var scoreDic : [String : Int]  = ["Jason":80, "Jay":97, "Jake":55]
var scoreDic2 : Dictionary<String , Int> = ["Jason":80, "Jay":97, "Jake":55]

scoreDic["Jason"]
scoreDic["dahun"] //없으면 nil이나옴, 그러므로 optional인 것을 알 수 있음.

scoreDic.isEmpty
scoreDic.count
scoreDic["Jason"] = 99 //key를 통해 value 변경 가능.
scoreDic = [:] //없는걸로 초기화해버림.
scoreDic.isEmpty
//key 추가
scoreDic["Jack"] = 100
scoreDic
//key의 값을 nil로 지정하면 dictionary에서 사라짐.
scoreDic["Jack"] = nil
scoreDic

for (name, score) in scoreDic2{
    print ("\(name), \(score)")
}


for key in scoreDic2.keys{
    print (key)
}

// 1 이름 직업 도시에 대해서 본이느이 딕셔너리 만들기
// 2 그 딕셔너리의 도시를 부산으로 업데이트하기
// 3 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

var myDictionary :  Dictionary<String , String> = ["name" : "dahun", "city" : "dong-tan" , "job" : "programer"]
myDictionary
myDictionary["city"] = "busan"
myDictionary["name"] = nil
func printDictionaryNameAndCity( inputDictionary : Dictionary<String,String> ){
    
    if let inputDictionaryName = inputDictionary["name"]{
        print("my name is \(inputDictionaryName)")
    } else{
        print("name is nil")
    }
    
    if let inputDictionaryCity = inputDictionary["city"]{
        print("my city is \(inputDictionaryCity)")
    } else{
        print("city is nil")
    }
}
printDictionaryNameAndCity(inputDictionary: myDictionary)

//두개 한번에 optional binding 가능.
func printDictionaryTeacher(dic : [String:String]){
    if let name = dic["name"], let city = dic["city"]{
        print(name, city)
    } else{
        print("there is nil")
    }
    
    
}



