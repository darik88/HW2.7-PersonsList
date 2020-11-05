//
//  Person.swift
//  HW2.7-PersonsList
//
//  Created by Айдар Рахматуллин on 04.11.2020.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    static func getPersons() -> [Person] {
        let data = DataManager()

        var persons: [Person] = []
        
        for index in 0..<data.firstNames.count {
            persons.append(
                Person(
                    firstName: data.firstNames[index],
                    lastName: data.lastNames[index],
                    phone: data.phones[index],
                    email:data.emails[index])
            )
        }
        
        return persons
    }
}

