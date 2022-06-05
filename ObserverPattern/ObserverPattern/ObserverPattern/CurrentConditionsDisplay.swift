//
//  CurrentConditionsDisplay.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import Foundation
import UIKit
import Combine

class CurrentConditionsDisplay: Observer, DisplayElement {
    var uuid = UUID()
    var temperature: CGFloat = 0
    var humidity: CGFloat = 0
    var weatherData: Subject!

    init(weatherData: Subject) {
        self.weatherData = weatherData
        weatherData.registerObserver(o: self)
    }
    
    func update(temp: CGFloat, humidity: CGFloat, pressure: CGFloat) {
        self.temperature = temp
        self.humidity = humidity
        
        display()
    }
    
    func display() {
        print(temperature)
        print(humidity)
    }
}
