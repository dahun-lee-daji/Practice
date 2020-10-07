import UIKit

struct Person{
    var firstName : String {
        willSet{// stored property만 가능
            print("willset: \(firstName) --> \(newValue)")
        }
        didSet{ // stored property만 가능
            print("didset: \(oldValue) --> \(firstName)")
            
        }
    }
    var lastaName : String
    
    lazy var isPopular: Bool = {
        if fullname == "Jay Park"{
            return true
        }else{
            return false
        }
        
    }()
    
    var fullname :String {
        get {
            return "\(firstName) \(lastaName)"
        }
        
        set {
            if let firstName = newValue.components(separatedBy: " ").first{
                self.firstName = firstName
            }
            if let LastName = newValue.components(separatedBy: " ").last{
                self.lastaName = LastName
            }
        }
    }
    
    // 이 위는 instance property
    // type property 인스턴스와 상관없이 타입 자체의 속성을 정할 때
    
    static let isAlien: Bool = false
}

var person1 = Person(firstName: "Jason", lastaName: "Lee")

person1.firstName = "Jake"
person1.lastaName = "Kim"
person1.firstName
person1.lastaName
person1.fullname = "Jay Park"
person1.fullname

Person.isAlien

person1.isPopular
