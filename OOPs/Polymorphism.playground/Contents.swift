import UIKit
import Foundation

/// Полиморфизм

class Teacher {
    let name: String /// хранимые свойства нельзя переопределить
    var discription: String {
        return "hey, my name is \(name), i teacher"
    }
    
    init(name: String) {
        self.name = name
        
    }
    
    func teach() {
        print("test")
    }
    
}


class IOSTeacher: Teacher {
    let speciality: String ///нельзя переопределить!
    
    ///
    override var discription: String {
        return "hey, my name is \(name), i code on Swift >3, my speciality: \(speciality)"
    }
    
    init(name: String, speciality: String) {
        self.speciality = speciality
        super.init(name: name)
    }
    
    ///
    override init(name: String) {
        self.speciality = "Frontend"
        super.init(name: name)
    }
    
    func swiftCoding() {
        print("code on swift >3")
    }
    
    ///
    override func teach() {
        print("ios teach")
    }
    
    /// перегрузка методов
    func teach(hours: Int) {
        print("i coding in day: \(hours)h")
    }
}

let teacher = Teacher(name: "Fedor")
teacher.name
teacher.discription
teacher.teach()

let ioateacher = IOSTeacher(name: "Vlad", speciality: "Front")
ioateacher.speciality
ioateacher.name
ioateacher.teach()
ioateacher.swiftCoding()
ioateacher.discription


let iOSTeacher2 = IOSTeacher(name: "Danil")
iOSTeacher2.speciality
iOSTeacher2.discription
ioateacher.teach()
ioateacher.teach(hours: 5)



