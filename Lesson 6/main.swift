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

enum SocialNets: String {
    case facebook = "#photography"
    case twitter = "#Bitcoin"
    case instagram = "#love"
    var description: String { return self.rawValue }
}

func descriptionForSocialNet (net: SocialNets) {
    print (net.description)
}

descriptionForSocialNet(net: .facebook)

// =================================================================
//                          Задание №1-4
// =================================================================
/* Задача 4: Создайте перечисление Grade, которое описывает оценки студента: excellent, good, satisfactory, unsatisfactory. Напишите функцию, которая принимает оценку и выводит сообщение:
 ● excellent: "Отлично! Ты молодец!"
 ● good: "Хорошо! Можешь лучше."
 ● satisfactory: "Удовлетворительно. Стоит подтянуть
 знания."
 ● unsatisfactory: "Неудовлетворительно. Нужно больше
 учиться." */

enum Grade {
    case excellent
    case good
    case satisfactory
    case unsatisfactory
}

func printGradeResume(status: Grade) {
    switch status {
    case .excellent:
        print("Отлично! Ты молодец!")
    case .good:
        print("Хорошо! Можешь лучше.")
    case .satisfactory:
        print("Удовлетворительно. Стоит подтянуть знания.")
    case .unsatisfactory:
        print("еудовлетворительно. Нужно больше учиться.")
    }
}

printGradeResume(status: .satisfactory)

// =================================================================
//                          Задание №2-1
// =================================================================
/* Задача 1: Создайте перечисление Season, которое описывает времена года: winter, spring, summer, autumn. Напишите функцию, которая принимает время года и выводит соответствующее описание:
 ● winter: "Зима — холодное время года, часто идёт снег."
 ● spring: "Весна — пробуждение природы, цветут цветы."
 ● summer: "Лето — жаркое время года, можно купаться."
 ● autumn: "Осень — время сбора урожая и опадающих листьев */

enum Season {
    case winter
    case spring
    case summer
    case autumn
}

func descriptionOfSeason (season: Season) {
    switch season {
    case .winter:
        print("Зима — холодное время года, часто идёт снег.")
    case .spring:
        print("Весна — пробуждение природы, цветут цветы.")
    case .summer:
        print("Лето — жаркое время года, можно купаться.")
    case .autumn:
        print("Осень — время сбора урожая и опадающих листьев.")
    }
}

descriptionOfSeason(season: .autumn)

// =================================================================
//                          Задание №2-2
// =================================================================
/* Задача 2: Создайте перечисление DeviceState, которое описывает состояния устройства: on, off, sleep. Напишите функцию, которая принимает текущее состояние устройства и выводит сообщение:
 ● on: "Устройство включено."
 ● off: "Устройство выключено."
 ● sleep: "Устройство находится в режиме сна."
   */

enum DeviceState {
    case on
    case off
    case sleep
    func description() {
        print("Текущее состояние устройства – ", terminator: "")
        switch self {
        case .on:
            print("включено.")
        case .off:
            print("выключено.")
        case .sleep:
            print("находится в режиме сна.")
        }
    }
}

let currentState = DeviceState.off
currentState.description()

// =================================================================
//                       Задание hard coding
// =================================================================

/* Задача: Система бронирования билетов на транспорт
 Создайте перечисление Transport, которое описывает различные виды транспорта: car, bus, train, airplane. Для каждого вида транспорта определите состояние бронирования: notAvailable (не доступно), available (доступно), fullyBooked (все билеты проданы).
 Используйте вложенное перечисление BookingStatus внутри Transport для хранения состояния бронирования. Условия:
 1. Создайте перечисление Transport, которое содержит вложенное перечисление BookingStatus.
 2. Реализуйте метод в Transport, который выводит доступное состояние транспорта (доступен или нет).
 3. Напишите функцию, которая выводит текущее состояние бронирования для каждого транспорта.
 Пример:
 Автобус: Доступно для бронирования
 Поезд: Все билеты проданы
 Самолёт: Не доступно
*/

enum Transport {
    enum BookingStatus: String {
        case notAvailable = "Не доступно."
        case available    = "Доступно."
        case fullyBooked  = "Все билеты проданы."
    }
    case car (status: BookingStatus)
    case bus (status: BookingStatus)
    case train (status: BookingStatus)
    case airplane (status: BookingStatus)
    func isBooking() {
        switch self {
        case .car(let status):
            print("Билеты на такси: ", status.rawValue)
        case .bus(let status):
            print("Билеты на автобус: ", status.rawValue)
        case .train(let status):
            print("Билеты на поезд: ", status.rawValue)
        case .airplane(let status):
            print("Билеты на самолёт: ", status.rawValue)
        }
    }
}

func bookingReport(car: Transport.BookingStatus,
                   bus: Transport.BookingStatus,
                   train: Transport.BookingStatus,
                   airplane: Transport.BookingStatus)
{
    print("Наличие билетов на данный момент:")
    var temp: Transport = .bus(status: bus)
        temp.isBooking()
        temp = .airplane(status: airplane)
        temp.isBooking()
        temp = .car(status: car)
        temp.isBooking()
        temp = .train(status: train)
        temp.isBooking()
}

bookingReport(car: .available, bus: .fullyBooked, train: .notAvailable, airplane: .notAvailable)


