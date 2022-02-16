//
//  main.swift
//  CurseOne
//
//  Created by macbook on 13.02.2022.
//
// Энам

import Foundation

let name = "Ivan"
let summa = 1 + 1
print(summa, name)
enum ActionsCar {
    case openWindows
    case closedWindows
    case engineRun
    case engineOff
    case trunkFull
    case trunkEmpty

    var mode: String {

        switch self {
        case .openWindows:
            return "Окна открыты"
        case .closedWindows:
            return "Окна закрыты"
        case .engineRun:
            return "Двигатель заведён"
        case .engineOff:
            return "Двигатель заглушён"
        case .trunkFull:
            return "Багажник полный"
        case .trunkEmpty:
            return "Багажник пустой"
        }
    }
}
var isOpenWindows = true
var isEngineRunning = true
var isFullTrunk = true

func modeOutpute(for name: ActionsCar) {
    switch name {
    case .openWindows:
        isOpenWindows = true
        print("\(ActionsCar.openWindows.mode) в вашей машине")
    case .closedWindows:
        isOpenWindows = false
        print("\(ActionsCar.openWindows.mode) в вашей машине")
    case .engineRun:
        isEngineRunning = true
        print("\(ActionsCar.engineRun.mode) в вашей машине")
    case .engineOff:
        isEngineRunning = false
        print("\(ActionsCar.engineOff.mode) в вашей машине")
    case .trunkFull:
        isFullTrunk = true
        print("\(ActionsCar.trunkFull.mode) в вашей машине")
    case .trunkEmpty:
        isFullTrunk = false
        print("\(ActionsCar.trunkEmpty.mode) в вашей машине")
    }
}
modeOutpute(for: .openWindows)
modeOutpute(for: .engineRun)
modeOutpute(for: .trunkEmpty)


// Создаём структуру

struct Car {
    let brand: String
    let model: String
    let yuerOfIssue: Int
    let color: String
    let clearance: Int
    let trunkVolume: Int
    let engineCapacity: Int
    let engine: String
    let driveUnit: String
    let maxSpeed: Int
    let carWeight: Int


// Инициализируем структуру
    init(brand: String,
         model: String,
         yuerOfIssue: Int,
         color: String,
         clearance: Int,
         trunkVolume: Int,
         engineCapacity: Int,
         engine: String,
         driveUnit: String,
         maxSpeed: Int,
         carWeight: Int) {

        self.brand = brand
        self.model = model
        self.yuerOfIssue = yuerOfIssue
        self.color = color
        self.clearance = clearance
        self.trunkVolume = trunkVolume
        self.engineCapacity = engineCapacity
        self.engine = engine
        self.driveUnit = driveUnit
        self.maxSpeed = maxSpeed
        self.carWeight = carWeight
        }
    }

let sportCar = Car.init(brand: "БМВ",
                        model: "Х5",
                        yuerOfIssue: 2015,
                        color: "Коричневый",
                        clearance: 220,
                        trunkVolume: 650,
                        engineCapacity: 280,
                        engine: "Дизель",
                        driveUnit: "Полный",
                        maxSpeed: 250,
                        carWeight: 3200)



// создаём новые  авто используя уже созданную структуру
let sportCarOne = Car(brand: "Maserati",
                      model: "Levante S",
                      yuerOfIssue: 2020,
                      color: "black",
                      clearance: 187,
                      trunkVolume: 580,
                      engineCapacity: 279,
                      engine: "petrol",
                      driveUnit: "full",
                      maxSpeed: 264,
                      carWeight: 2109)

let sportCarTwo = Car(brand: "Porsche",
                      model: "Panamera",
                      yuerOfIssue: 2019,
                      color: "red",
                      clearance: 144,
                      trunkVolume: 515,
                      engineCapacity: 515,
                      engine: "petrol",
                      driveUnit: "full",
                      maxSpeed: 315,
                      carWeight: 2440)

// Создаём новую структуру "Пробег Авто"
struct MileageCar {
    var originalMileage: Int = 5000 {
        willSet(newOriginalMileage) {
            print("Новый километраж вашего авто \(newOriginalMileage) километров")
        }
        didSet {
            print("К пробегу добавлено \(oldValue) километров")
        }
    }
}
var mileage = MileageCar()
print(mileage.originalMileage)

// Новая структура с использованием функции
struct Mersedes {
    let name: String = "Mersedes GLS"
    let age: Int = 2022

    mutating func greatCar() {
        print("Поздравляем! Вы счастливый обладатель \(name) \(age) года выпуска!")
    }
}

