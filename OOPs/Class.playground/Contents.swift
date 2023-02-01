import UIKit
import Foundation

// Class - ссылочный тип данных
// Объект - это экземпляр класса

class Player {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    public func checkAgeStatus(age: Int) -> String {
        switch age {
        case 15...21:
            return ("yung human")
        case 22...60:
            return ("middle human")
        case 70...100:
            return ("old human")
        default:
            return ("unknow")
        }
    }
    
    func outputInfo(name: String, age: Int, ageStatus: String) {
        print("Your name: \(name), years old: \(age), status age: \(ageStatus)")
    }
}

let persen1 = Player(name: "Bob", age: 20)
//persen1.outputInfo(name: persen1.name, age: persen1.age, ageStatus: persen1.checkAgeStatus(age: persen1.age))

let persen2 = Player(name: "Kate", age: 50)
persen1.checkAgeStatus(age: persen2.age)

let persen3 = Player(name: "Jack", age: 90)
persen1.checkAgeStatus(age: persen3.age)

let person = [persen1, persen2, persen3]

for index in person {
    index.outputInfo(name: index.name, age: index.age, ageStatus: index.checkAgeStatus(age: index.age))
}
