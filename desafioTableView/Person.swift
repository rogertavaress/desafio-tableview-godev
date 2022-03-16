//
//  Person.swift
//  desafioTableView
//
//  Created by Rogério Tavares on 15/03/22.
//

import Foundation
import UIKit

struct Person {
    var color: UIColor {
        let colors: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
        
        return colors.randomElement()!
    }
    var name: String
    var city: String
    
    init(name: String, city: String) {
        self.name = name
        self.city = city
    }
}
