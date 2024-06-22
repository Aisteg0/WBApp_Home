import UIKit

class Person {
    var name: String
    var age: Int
    var passport: Passport?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print(#file, #line, "Чекловек инициализирован")
    }
    
    deinit {
        print(#file, #line, "Человек деиницилизирован")
    }
}

class Passport {
    var seria: Int
    var number: Int
    var dateVidachi: String
    weak var name: Person?
    
    init(seria: Int, number: Int, dateVidachi: String, name: Person?) {
        self.seria = seria
        self.number = number
        self.dateVidachi = dateVidachi
        self.name = name
        print(#file, #line, "Паспорт инициализирован")
    }
    
    deinit {
        print(#file, #line, "Паспорт деиницилизирован")
    }
}

var person: Person? = Person(name: "Misha", age: 23)
var passport: Passport? = Passport(seria: 1234, number: 123123, dateVidachi: "23.03.23", name: person)
person?.passport = passport

person = nil
passport = nil

