//
//  Swift. Stream 9
//  Lesson 6
//
//  Created by Evgeny Mastepan on 05.10.2024.
//

import Foundation
// =================================================================
//                          Задание №1-1
// =================================================================
/*  Задача 1: Создайте перечисление для представления четырёх сторон света (north, south, east, west). Реализуйте метод, который для каждого направления выводит соответствующее описание (например, "Север — холод и снег"). */

enum CardinalDirections: String {
    case north = "Север – холод и снег"
    case south = "Юг – тепло и отдых"
    case west  = "Запад – работа и деньги"
    case east  = "Восток – мир и покой"
    func description() -> String {
        return self.rawValue
    }
}

let direction = CardinalDirections.south
print (direction.description())

// =================================================================
//                          Задание №1-2
// =================================================================
/* Задача 2: Реализуйте перечисление для статусов заказа (ordered, shipped, delivered, cancelled) и напишите функцию, которая выводит текущее состояние заказа. */

enum OrderStatus {
    case ordered
    case shipped
    case delivered
    case cancelled
}

func printStatusOfOrder(status: OrderStatus) {
    switch status {
    case .ordered:
        print("Заказ принят.")
    case .shipped:
        print("Заказ передан в доставку.")
    case .delivered:
        print("Заказ доставлен.")
    case .cancelled:
        print("Заказ отменен.")
    }
}

printStatusOfOrder(status: .cancelled)

// =================================================================
//                          Задание №1-3
// =================================================================
/* Задача 3: Создайте перечисление для различных типов социальных сетей (facebook, twitter, instagram) и функцию, которая выводит популярный хэштег для каждой сети. */
