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
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}
    

extension Person {
    static func getContactsList() -> [Person] {
        let personData = DataManager()
        
        
        return [
            Person(name: personData.name.randomElement() ?? "",
                  secondName: personData.secondName.randomElement() ?? "",
                  phone: personData.phone.randomElement() ?? "",
                  email: personData.email.randomElement() ?? ""
                  ),
            Person(name: personData.name.randomElement() ?? "",
                  secondName: personData.secondName.randomElement() ?? "",
                  phone: personData.phone.randomElement() ?? "",
                  email: personData.email.randomElement() ?? ""
                  ),
            Person(name: personData.name.randomElement() ?? "",
                  secondName: personData.secondName.randomElement() ?? "",
                  phone: personData.phone.randomElement() ?? "",
                  email: personData.email.randomElement() ?? ""
                 ),
            Person(name: personData.name.randomElement() ?? "",
                   secondName: personData.secondName.randomElement() ?? "",
                   phone: personData.phone.randomElement() ?? "",
                   email: personData.email.randomElement() ?? ""
                   ),
            Person(name: personData.name.randomElement() ?? "",
                   secondName: personData.secondName.randomElement() ?? "",
                   phone: personData.phone.randomElement() ?? "",
                   email: personData.email.randomElement() ?? ""
                  )]
    }
}
