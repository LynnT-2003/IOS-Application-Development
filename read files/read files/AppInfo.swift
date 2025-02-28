//
//  AppInfo.swift
//  read files
//
//  Created by Lynn Thit Nyi Nyi on 15/7/2567 BE.
//

import Foundation



struct AppInfo: Codable {
    let color: String
    let university: String
    let app: String
    let version: Double

    enum CodingKeys: String, CodingKey {
        case color = "Color"
        case university = "University"
        case app = "App"
        case version = "Version"
    }
}
