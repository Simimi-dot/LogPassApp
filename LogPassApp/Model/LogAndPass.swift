//
//  LogAndPass.swift
//  LogPassApp
//
//  Created by Егор Астахов on 27.10.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let email: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Egor", password: "12345", email: "egor@mail.ru", person: Person(name: "Egor", surname: "Astakhov"))
    }
}

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

enum UsersWarnings {
    case userNameWarning
    case userPasswordWarning
    case userEmailWarning
    
    var warnings: String {
        switch self {
        case .userNameWarning:
            return "Вы ввели неправильное имя пользователя"
        case .userPasswordWarning:
            return "Вы ввели неправильный пароль"
        case .userEmailWarning:
            return "Вы ввели неправильный e-mail"
        }
    }
}

enum UsersConfirms {
    case userNameConfirm
    case userPasswordConirm
    case userEmailConfirm
    
    var confirms: String {
        switch self {
        case .userNameConfirm:
            return "Имя пользователя подтверждено. Сообщение для смены пароля было выслано вам на e-mail"
        case .userPasswordConirm:
            return "Пароль пользователя подтвержден"
        case .userEmailConfirm:
            return "E-mail пользователя подтвержден. Сообщение для восстановения имени пользователя было отправлено вам на почту"
        }
    }
}

