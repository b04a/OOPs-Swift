import Foundation
import UIKit

var greeting = "Hello, playground"


/// Наследование
class People { //superclass
    var name: String
    var lastName = "Karwich"
    var fullName: String {
        return name + " " + lastName
    }
    
    func printesMethod() -> String {
        return "Your name - "
    }
    
    init(name: String) {
        self.name = name
    }
}

class Man: People { //subclass
    override func printesMethod() -> String {
        return super.printesMethod() + "Carl"
    }
}

let peopleName = People(name: "Bob")
print(peopleName.fullName)



/// Инкапсуляция

class Boys {
    public var firstName = "Bob"
    private var lastName = "Mithel"
    final func printHi() {
        print("Hey")
    }
}

class Girls: Boys {
    
}

let girls = Girls()
girls.printHi()

/// Полиморфизм

class General {
    func method() {
        print("Hello General")
    }
}

class People1: General {
    override func method() {
        print("Hi people1")
    }
}

class People2: General {
    override func method() {
        print("Hi people2")
    }
}

let general = General()
let people1 = People1()
let people2 = People2()

var array = [general, people1, people2]

for obj in array {
    obj.method()
}



















