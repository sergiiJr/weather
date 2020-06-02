//
//  WeatherData.swift
//  Clima
//
//  Created by Sergii Bala on 6/1/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [WeatherType]
    let visibility: Int
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
}

struct WeatherType: Codable {
    let main: String
    let id: Int
}

