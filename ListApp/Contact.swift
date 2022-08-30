//
//  Contact.swift
//  ListApp
//
//  Created by Aleksey Zyamin on 30.08.2022.
//

import Foundation

struct Person {
    var name: String
    var secondName: String
    var phone: String
    var email: String
}
    
var personData = DataManager()
var person = Person(
    name: personData.name.randomElement()!,
    secondName: personData.secondName.randomElement()!,
    phone: personData.phone.randomElement()!,
    email: personData.email.randomElement()!
)

extension Person {
    static func getContactsList() -> [Person] {
        [
            Person(name: person.name,
                   secondName: person.secondName,
                   phone: person.phone,
                   email: person.email),
            Person(name: person.name,
                   secondName: person.secondName,
                   phone: person.phone,
                   email: person.email),
            Person(name: person.name,
                   secondName: person.secondName,
                   phone: person.phone,
                   email: person.email),
            Person(name: person.name,
                   secondName: person.secondName,
                   phone: person.phone,
                   email: person.email),
        Person(name: person.name,
               secondName: person.secondName,
               phone: person.phone,
               email: person.email)
        ]
    }
}
