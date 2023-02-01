import UIKit
import Foundation


/// Init
class Car {
    let brendAndModel: String
    let wheelsCount: Int
    var color = "White"
    
    /// Инциализатор по умолчанию
    init(brendAndModel: String, wheelsCount: Int = 4) {
        self.brendAndModel = brendAndModel
        self.wheelsCount = wheelsCount
    }
    
    /// Memberwise-Инциализатор
    init(brendAndModel: String, wheelsCount: Int, color: String) {
        self.brendAndModel = brendAndModel
        self.wheelsCount = wheelsCount
        self.color = color
    }
    
    /// Failable-Инциализатор
    init?(brand: String, model: String, wheelsCount: Int) {
        if wheelsCount < 4 {
            return nil
        } else {
            self.wheelsCount = wheelsCount
            self.brendAndModel = "\(brand)\(model)"
        }
    }
    
    /// "Удобный" Инциализатор
    convenience init(brendAndModel: String, color: String) {
        self.init(brendAndModel: brendAndModel)
        self.color = color
    }
}


let bmw = Car(brendAndModel: "BMX 5")
let audi = Car(brendAndModel: "Audi A4", wheelsCount: 46)
let honda = Car(brendAndModel: "Honda", color: "Black")


