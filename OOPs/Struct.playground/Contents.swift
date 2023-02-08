import UIKit

class Person {
    let name: String
    var phone: Int
    
    init(name: String, phone: Int) {
        self.name = name
        self.phone = phone
    }
    
    public func changePhone(phone: Int) {
        self.phone = phone
    }
}

struct User {
    let name: String
    var phone: Int
    
    mutating func changePhone(phone: Int) {
        self.phone = phone
    }
}


let person = Person(name: "Vasya", phone: 89128452038)
let user = User(name: "Fedor", phone: 89128452039)

var person2 = Person(name: "Lei", phone: 89132452038)
var user2 = User(name: "Egor", phone: 89128452039)

person2 = person
user2 = user

person2.name
user2.name


















