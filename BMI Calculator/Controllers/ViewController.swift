//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightView: UILabel!
    @IBOutlet weak var weightView: UILabel!
    
    @IBOutlet weak var heightSlideBar: UISlider!
    @IBOutlet weak var weightSlideBar: UISlider!
    var calculator = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightView.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightView.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlideBar.value
        let weight = weightSlideBar.value
        calculator.calculateBMI(weight, height)
        self.performSegue(withIdentifier: "goToResultPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultPage" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculator.getBMIValue()
            destinationVC.advice = calculator.getBMIAdvice()
            destinationVC.backgroundColor = calculator.getBackgroundColor()
        }
    }
}

