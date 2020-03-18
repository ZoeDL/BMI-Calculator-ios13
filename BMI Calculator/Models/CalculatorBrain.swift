//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 余泽熙 on 3/18/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    mutating func calculateBMI(_ weight: Float, _ height: Float) {
        let bmiValue = weight/pow(height, 2)
        if(bmiValue < 18.5) {
            bmi = BMI(bmiValue: bmiValue, advice: "Eat more snacks!", backgroundColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiValue < 24.5) {
            bmi = BMI(bmiValue: bmiValue, advice: "Fit as fickle!", backgroundColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(bmiValue: bmiValue, advice: "Eat less and exercise more!", backgroundColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        // optional nil coalescing
        let bmiValue = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        return bmiValue
    }
    
    func getBMIAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? ""
        return bmiAdvice
    }
    
    func getBackgroundColor() -> UIColor {
        return bmi?.backgroundColor ?? UIColor.blue
    }
}
