import UIKit


//CustomStringConvertible

struct Lecture : CustomStringConvertible {
    var description: String{
        return "Title : \(className), Instructor : \(classTeacher)"
    }
    var className :String
    var classTeacher : String
    var numberOfStudent : Int
}

func printClassNameFindByTeacher(lectureArrays : Array<Lecture>, targetTeacherName: String){
    
    for lecture in lectureArrays{
        if lecture.classTeacher == targetTeacherName{
            print(lecture.className)
        } else{
            print("the teacher who you say isn't has a class")
        }
    }
    
}

//  Using closure
// in 내부의 조건(리턴)을 만족하는 첫번째 array를 가져와서 (lec). lectureName이 옵셔널이고, className을 가져오는데 이게nil 이면 기본값으로 ""를 줌 ( ?? "")
func printLecutreNameClosure(lectureArrays : Array<Lecture>, targetTeacherName: String){

    let lectureName = lectureArrays.first { (lec) -> Bool in
        return lec.classTeacher==targetTeacherName
    }?.className ?? ""

}


let lecture1 = Lecture(className: "1강", classTeacher: "Jason1", numberOfStudent: 1)
let lecture2 = Lecture(className: "2강", classTeacher: "Jason2", numberOfStudent: 2)
let lecture3 = Lecture(className: "3강", classTeacher: "Jason3", numberOfStudent: 3)
var lectures = [lecture1, lecture2, lecture3 ]

print(lecture1)

printClassNameFindByTeacher(lectureArrays: lectures, targetTeacherName: "Jason")
