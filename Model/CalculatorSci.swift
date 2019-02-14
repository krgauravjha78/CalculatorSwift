//
//  CalculatorSci.swift
//  DemoApplication
//
//  Created by iWizards XI on 14/02/19.
//  Copyright © 2019 iWizards XI. All rights reserved.
//

import Foundation

enum CalculatorSciOperation {
    
    case logrithm
    case sindegree
    case cosdegree
    case tandegree
    
    
    init?(from buttonTitle: String) {
        switch buttonTitle {
        case "Sin": self = .sindegree
        case "Cos": self = .cosdegree
        case "Tan": self = .tandegree
        case "Log": self = .logrithm
        default: return nil
        }
    }
    
    func apply(to left: Double) -> Double {
        
        switch self {
        case .sindegree:
            return sin(left * .pi / 180)
            
        case .cosdegree:
            return cos(left * .pi / 180)
            
        case .tandegree:
            return tan(left * .pi / 180)
            
        case .logrithm:
            return Darwin.log(left) / Darwin.log(10)
        }
    }
}


enum CalculatorOperation {
    
    case add
    case subtract
    case multiply
    case divide
    
    init?(from buttonTitle: String) {
        switch buttonTitle {
        case "+": self = .add
        case "-": self = .subtract
        case "*": self = .multiply
        case "/": self = .divide
        default: return nil
        }
    }
    
    func apply(to left: Double, and right: Double) -> Double {
        
        switch self {
        case .add:
            let sum = left + right
            return Double(sum)
            
        case .subtract:
            let difference = left - right
            return Double(difference)
            
        case .multiply:
            let product = left * right
            return Double(product)
            
        case .divide:
            let divison = left / right
            return Double(divison)
        }
    }
}
