//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Skyler Galatro on 4/27/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        return String( format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Idk"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = (weight / pow(height, 2)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You == Lebron James", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Begin starving yourself.", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}
