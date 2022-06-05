//
//  Observer.swift
//  ObserverPattern
//
//  Created by 박성원 on 2022/06/05.
//

import Foundation
import UIKit

protocol Observer {
    var uuid: UUID { get set }
    func update(temp: CGFloat, humidity: CGFloat, pressure: CGFloat)
}
