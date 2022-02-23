//
//  main.swift
//  CurseOne
//
//  Created by macbook on 13.02.2022.
//

import Foundation

enum CarAction {
    case onEngine
    case offEngine
    case openWindow
    case closeWindow
    case openDoor
    case closeDoor

    var mode: String {
        switch self {
        case .onEngine:
            return ("Двигатель запушен")
        case .offEngine:
            return ("Двигатель заглушен")
        case .openWindow:
            return ("Окно открыто")
        case .closeWindow:
            return ("Окно закрыто")
        case .openDoor:
            return ("Дверь открыта")
        case .closeDoor:
            return ("Дверь закрыта")
        }
    }
}
func modeOutput(for name: CarAction) {
    switch name {
    case .onEngine:
        print("\(CarAction.onEngine.mode) в вашей машине")
    case .offEngine:
        print("\(CarAction.offEngine.mode) в вашей машине")
    case .openWindow:
        print("\(CarAction.openWindow.mode) в вашей машине")
    case .closeWindow:
        print("\(CarAction.closeWindow.mode) в вашей машине")
    case .openDoor:
        print("\(CarAction.openDoor.mode) в вашей машине")
    case .closeDoor:
        print("\(CarAction.closeDoor.mode) в вашей машине")
    }
}

protocol ICar {
    var brend: String { get set }
    var model: String { get set }
    var yearOld: Int { get set }
    var color: String { get set }
    var carOn: CarAction { get set }
    var carWindow: CarAction { get set }
    var carDoor: CarAction { get set }
}

final class SportCar: ICar {
    var brend: String
    var model: String
    var yearOld: Int
    var color: String
    var carOn: CarAction
    var carWindow: CarAction
    var carDoor: CarAction

    init(brend: String,
         model: String,
         yearOld: Int,
         color: String,
         carOn: CarAction,
         carWindow: CarAction,
         carDoor: CarAction) {

        self.brend = brend
        self.model = model
        self.yearOld = yearOld
        self.color = color
        self.carOn = carOn
        self.carWindow = carWindow
        self.carDoor = carDoor
    }
}

let porsche = SportCar (brend: "Porsche",
                    model: "Panamera",
                    yearOld: 2019,
                    color: "red",
                    carOn: .onEngine,
                    carWindow: .closeWindow,
                    carDoor: .closeDoor)

extension SportCar {
    func superSpeed() {
        print ("Вы едете слишком быстро!")
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Brend: \(brend), \nModel: \(model), \nAge: \(yearOld), \nColor: \(color)"
    }
}

final class TrunkCar: ICar {
    var brend: String
    var model: String
    var yearOld: Int
    var color: String
    var carOn: CarAction
    var carWindow: CarAction
    var carDoor: CarAction

    init(brend: String,
         model: String,
         yearOld: Int,
         color: String,
         carOn: CarAction,
         carWindow: CarAction,
         carDoor: CarAction) {

        self.brend = brend
        self.model = model
        self.yearOld = yearOld
        self.color = color
        self.carOn = carOn
        self.carWindow = carWindow
        self.carDoor = carDoor
    }
}

let UAZ = TrunkCar(brend: "УАЗ",
                   model: "Патриот",
                   yearOld: 2015,
                   color: "Серый",
                   carOn: .offEngine,
                   carWindow: .openWindow,
                   carDoor: .closeDoor)

extension TrunkCar {
    func bigTrunk() {
        print ("В багажник много влезет")
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Brend: \(brend), \nModel: \(model), \nAge: \(yearOld), \nColor: \(color)"
    }
}


porsche.superSpeed()
modeOutput(for: .closeDoor)
modeOutput(for: .onEngine)
print(porsche.description)

UAZ.bigTrunk()
print(UAZ.description)
