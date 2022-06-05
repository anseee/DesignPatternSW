//
//  ContentViewModel.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import Foundation
import Combine
import UIKit

class ContentViewModel: ObservableObject {
    var weatherData = WeatherData()
    var currentDisplay: CurrentConditionsDisplay!
    
    init() {
        currentDisplay = CurrentConditionsDisplay(weatherData: weatherData)
        updatingWeatherData()
    }
    
    func updatingWeatherData() {
        weatherData.setMeasurements(temp: CGFloat.random(in: 0..<99),
                                    humidity: CGFloat.random(in: 0..<99),
                                    pressure: CGFloat.random(in: 0..<99))
    }
}
