import Foundation

final class Student {
    private var  students = ["Иванов Роман": 5, "Куравлев Михаил": 3, "Бугаева Алла": 4, "Широкова Ольга": 5]

    func score(name: String) -> Int? {
        return students[name]
    }
// Средний балл
func middleScore() -> Int {

    if students.count > 0 {
        var totalScore = 0
        for student in students {
            totalScore += student.value
        }
        return totalScore / students.count
    } else {
        return 0
    }
  }
}
let student  = Student()

if let score = student.score(name: "Иванов Роман") {
    print(score)
} else {
    print("Нет такого студента")
}
print(student.middleScore())

// Enum error
enum CoffeeMachineError: Error {
    case errorCoffeeName
    case errorCount
    case errorMoneyPrice
}

//Struct model

struct Item {
    let price: Int
    var count: Int
    let product: Names
}
struct Names {
    let name: String
}

// Class
final class CoffeeMachine {
    var inventory = ["Cappuccino" : Item(price: 70, count: 20, product: Names(name: "Cappuccino")),
                  "Americano" : Item(price: 50, count: 50, product: Names(name: "Americano")),
                  "Espresso" : Item(price: 40, count: 100, product: Names(name: "Espresso"))]
var moneyPrice = 0

    func reserves(itemNeed name: String) throws -> Names {

        guard let item = inventory[name] else { throw CoffeeMachineError.errorCoffeeName }
        guard item.count > 0 else { throw CoffeeMachineError.errorCount }
        guard item.price <= moneyPrice else { throw CoffeeMachineError.errorMoneyPrice }

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Preparing coffee \(name)")
        return newItem.product
    }
}
let money = CoffeeMachine()
money.moneyPrice = 70

do {
    let product = try money.reserves(itemNeed: "Americano")
    print(product.name)
} catch let error {
    print(error)
}

