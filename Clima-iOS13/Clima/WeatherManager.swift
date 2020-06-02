//
//  WeatherMAnager.swift
//  Clima
//
//  Created by Sergii Bala on 5/31/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=97bd9e32c8cf968ea4253264f937a09c&units=imperial"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        //Step 1. Create a URL
        
        if let url = URL(string: urlString) {
            
            //Step 2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            //Step 3. Give the session a task
            
            let task = session.dataTask(with: url, completionHandler: handle(data: urlResponse: error:))
            
            //Step 4. Start the task
            
            task.resume()
            
        }
       }
    func handle(data: Data?, urlResponse: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
    }
}
