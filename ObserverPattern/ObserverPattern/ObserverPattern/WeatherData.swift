//
//  WeatherData.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import Foundation
import UIKit

class WeatherData: Subject {
    var observsers: [Observer] = []
    var temperature: CGFloat = 0
    var humidity: CGFloat = 0
    var pressure: CGFloat = 0
    
    func registerObserver(o: Observer) {
        observsers.append(o)
    }
    
    func removeObserver(o: Observer) {
        observsers.removeAll { observer in
            observer.uuid == o.uuid
        }
    }
    
    func notifyObserver() {
        observsers.forEach { $0.update(temp: temperature, humidity: humidity, pressure: pressure) }
    }
    
    func measurementsChanged() {
        notifyObserver()
    }
    
    func setMeasurements(temp: CGFloat, humidity: CGFloat, pressure: CGFloat) {
        self.temperature = temp
        self.humidity = humidity
        self.pressure = pressure
        
        measurementsChanged()
    }
}
