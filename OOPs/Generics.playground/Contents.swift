import UIKit

/// Equatable - равно/не равно
/// Comparable - сравниваемые сопоставляемые <> <= >= == !=
/// CustomStringConvertible - могут быть представлены в виде строки
/// Numeric - все числа

/// Gererics

func addInts(a: Int, b: Int) -> Int {
    return a + b
}

func addDoubles(a: Double, b: Double) -> Double {
    return a + b
}



func add<T: Numeric>(a: T, b: T) -> T {
    return a + b
}

add(a: 56, b: 23)
add(a: 56.4, b: 23.9)

protocol Storage {
    associatedtype Item
    func store(item: Item)
    func retrieve(index: Int) -> Item?
}

struct Book {
    let title: String
    let author: String
}

class BookCase: Storage {
    typealias Item = Book
    
    var books = [Book]()
    
    func store(item: Book) {
        books.append(item)
    }
    
    func retrieve(index: Int) -> Book? {
        guard index < books.count  else {
            return nil
        }
        
        return books[index]
    }
}

class Case<Item>: Storage {
    var items = [Item]()
    
    func store(item: Item) {
        items.append(item)
    }
    
    func retrieve(index: Int) -> Item? {
        guard index < items.count  else {
            return nil
        }
        
        return items[index]
    }
}

struct Clothes {
    let brend: String
    let price: Int
    let size: String
}

let tShort = Clothes(brend: "Versace", price: 1500, size: "L")
let shoes = Clothes(brend: "Nike", price: 150, size: "41")

let clothesCase = Case<Clothes>()

clothesCase.store(item: tShort)
clothesCase.store(item: shoes)

clothesCase.items.count
clothesCase.items.last?.price
clothesCase.items.last?.brend

/// Stack
struct Stack<T> {
    private var container = [T]()
    
    var isEmpty: Bool {
        return self.container.isEmpty
    }
    
    var size: Int {
        return self.container.count
    }
    
    var top: T? {
        return self.container.last
    }
    
    mutating func push(_ element: T) {
        self.container.append(element)
    }
    
    mutating func pop() -> T? {
        if !self.isEmpty {
            return container.removeLast()
        } else {
            return nil
        }
    }
}

var stack = Stack<String>()

stack.push("Anna Karenina")
stack.push("Cat Leopaol")
stack.push("Idiot")

stack.size
stack.isEmpty
stack.top
stack.pop()
stack.top

























