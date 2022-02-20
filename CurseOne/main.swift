//
//  main.swift
//  CurseOne
//
//  Created by macbook on 13.02.2022.
//

import Foundation

//MARK: - Энам, действия с автомобилем

enum CarAction {
    case startEngine
    case stopEngine
    case openDoor
    case closeDoor
    case openWindow
    case closeWindow
    case onConditioner
    case offConditioner
    case openTrunk
    case closeTrunk

    var mode: String {
        switch self {
        case .startEngine:
            return "Двигатель запущен"
        case .stopEngine:
            return "Двигатель заглушен"
        case .openDoor:
            return "Дверь открыта"
        case .closeDoor:
            return "Дверь закрыта"
        case .openWindow:
            return "Окно открыто"
        case .closeWindow:
            return "Окно закрыто"
        case .onConditioner:
            return "Кондиционер включен"
        case .offConditioner:
            return "Кондиционер выключен"
        case .openTrunk:
            return "Крышка багажника открыта"
        case .closeTrunk:
            return "Крышка багажника закрыта"
        }
    }
}
func modeOutpute(for name: CarAction) {
    switch name {
    case .startEngine:
        print("\(CarAction.startEngine.mode) в вашей машине")
    case .stopEngine:
        print("\(CarAction.stopEngine.mode) в вашей машине")
    case .openDoor:
        print("\(CarAction.openDoor.mode) в вашей машине")
    case .closeDoor:
        print("\(CarAction.closeDoor.mode) в вашей машине")
    case .openWindow:
        print("\(CarAction.openWindow.mode) в вашей машине")
    case .closeWindow:
        print("\(CarAction.closeWindow.mode) в вашей машине")
    case .onConditioner:
        print("\(CarAction.onConditioner.mode) в вашей машине")
    case .offConditioner:
        print("\(CarAction.offConditioner.mode) в вашей машине")
    case .openTrunk:
        print("\(CarAction.openTrunk.mode) в вашей машине")
    case .closeTrunk:
        print("\(CarAction.closeTrunk.mode) в вашей машине")
    }
}
modeOutpute(for: .startEngine)
modeOutpute(for: .closeWindow)
modeOutpute(for: .closeDoor)
modeOutpute(for: .closeTrunk)
modeOutpute(for: .onConditioner)

//MARK: - Классы

class Car {
    var brend: String
    var model: String
    var color: String
    var yearOfIssue: Int
    var mileage: Int
    var maxSpeed: Int

    init (brend: String,
          model: String,
          color: String,
          yearOfIssue: Int,
          mileage: Int,
          maxSpeed: Int) {

        self.brend = brend
        self.model = model
        self.color = color
        self.yearOfIssue = yearOfIssue
        self.mileage = mileage
        self.maxSpeed = maxSpeed

    }
}
//Наследники
final class SportCar: Car {
    override init(brend: String,
                  model: String,
                  color: String,
                  yearOfIssue: Int,
                  mileage: Int,
                  maxSpeed: Int) {

        super.init(brend:"Порше",
                   model: "Панамера",
                   color: "Красная",
                   yearOfIssue: 2018,
                   mileage: 15_000,
                   maxSpeed: 315)
    }
}
let porsche = SportCar(brend: "Порше",
                       model: "Панамера",
                       color: "Красная",
                       yearOfIssue: 2018,
                       mileage: 15_000,
                       maxSpeed: 315)

print(porsche.model)

final class TrunkCar: Car {
    override init(brend: String,
                  model: String,
                  color: String,
                  yearOfIssue: Int,
                  mileage: Int,
                  maxSpeed: Int) {

        super .init(brend: "УАЗ",
                    model: "Патриот",
                    color: "Чёрный",
                    yearOfIssue: 2015,
                    mileage: 36_000,
                    maxSpeed: 150)
    }
}
//MARK: - Перекрестные ссылки

class Parking {
    var name: String
    weak var box:Box?
    init(name: String) {
        self.name = name
        print("Парковка инициализирована и создана в памяти")
    }
    deinit {
        print("Парковочный талон закончился у \(name)")
    }
}
class Box {
    var parking: Parking?
    var boxNumber: String
    init(boxNumber: String) {
        self.boxNumber = boxNumber
        print("Парковочное место инициализировано и создано в памяти")
    }
    deinit {
        print("Парковочное место номер \(boxNumber) освобождено")
    }
}
var objectParking: Parking?
var objectBox: Box?

objectParking = Parking(name: "BMW X6")
objectBox = Box(boxNumber: "13")

objectParking = nil
objectBox = nil
