//
//  Subject.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import Foundation

protocol Subject {
    func registerObserver(o: Observer)
    func removeObserver(o: Observer)
    func notifyObserver()
}


