//
//  Swift. Stream 9
//  Lesson 6
//
//  Created by Evgeny Mastepan on 05.10.2024.
//

import Foundation
// =================================================================
//                          Задание №1
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
