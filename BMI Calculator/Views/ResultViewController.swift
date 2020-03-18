//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 余泽熙 on 3/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var backgroundColor: UIColor?

    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiView.text = bmiValue
        adviceLabel.text = advice
        backgroundView.backgroundColor = backgroundColor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
