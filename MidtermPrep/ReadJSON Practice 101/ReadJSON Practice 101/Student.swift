//
//  Student.swift
//  ReadJSON Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import Foundation

struct StudentClass: Codable {
    let students: [Student]
    enum CodingKeys: String, CodingKey {
         case students = "Students"
    }
}

struct Student: Codable {
    let name: String
    let age: Int
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case age = "age"
    }
}


