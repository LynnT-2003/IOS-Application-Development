//
//  App.swift
//  Top Charts App
//
//  Created by Lynn Thit Nyi Nyi on 16/7/2567 BE.
//

import Foundation

//struct StudentClass: Codable {
//    let students: [Student]
//    enum CodingKeys: String, CodingKey {
//        case students = "Students"
//    }
//}
//
//struct Student: Codable {
//    let name: String
//    let age: Int
//    
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//        case age = "age"
//    }
//}

//AppInfo(
//    appName: "LINE",
//    appIcon: "lineAppIcon",
//    shortDescription: "Free messaging, voice, and video calls.",
//    rating: 4.8,
//    age: "4+",
//    topChartPosition: 1,
//    detailedDescription: "LINE reshapes communication around the globe, bringing you closer to your family, friends, and loved ones—for free. With voice and video calls, messages, and a limitless variety of exciting stickers, you'll be able to express yourself in ways that you never thought possible.",
//    screenshotGallery: ["lineScreenshot1", "lineScreenshot2", "lineScreenshot3", "lineScreenshot4"]
//),

struct AppsClass: Codable {
    let apps: [App]
    
    enum CodingKeys: String, CodingKey {
        case apps = "TopTenApps"
    }
}

struct App: Codable {
    let appName: String
    let appIcon: String
    let shortDescription: String
    let rating: Float
    let age: String
    let topChartPosition: Int
    let detailedDescription: String
    let screenshotGallery: [String]
    
    enum CodingKeys: String, CodingKey {
        case appName = "appName"
        case appIcon = "appIcon"
        case shortDescription = "shortDescription"
        case rating = "rating"
        case age = "age"
        case topChartPosition = "topChartPosition"
        case detailedDescription = "detailedDescription"
        case screenshotGallery = "screenshotGallery"
    }
}
