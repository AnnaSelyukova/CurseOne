//
//  main.swift
//  CurseOne
//
//  Created by macbook on 13.02.2022.
//

import Foundation

    var variableString = [String]()
    var variableInt  = [Int]()

struct Queue<T> {
var items = [T]()

    mutating func push(item: T) {
        items.append(item)
    }

    mutating func push() -> T {
        return items.removeLast()
    }
    func filter(value: (T) -> Bool) -> [T] {
        var result = [T]()
        for item in items {
            if value(item) {
                result.append(item)
            }
        }
        return result
    }
    subscript(index: Int) -> T? {
        guard index < items.count, index >= 0 else { return nil }
        return items[index]
    }
}
extension Queue: CustomStringConvertible {
    var description: String {
        return "\(Array(items.reversed()))"
    }
}

var arrayNames = Queue(items: variableString)

arrayNames.push(item: "Roman")
arrayNames.push(item: "Elena")
print(arrayNames.items)

var arrayAge = Queue(items: variableInt)

arrayAge.push(item: 30)
arrayAge.push(item: 25)
print(arrayAge.items)
