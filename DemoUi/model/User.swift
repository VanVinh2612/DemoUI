//
//  User.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 12/04/2023.
//

import Foundation

struct User: Codable {
    let age: Int
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case age
    }
}

