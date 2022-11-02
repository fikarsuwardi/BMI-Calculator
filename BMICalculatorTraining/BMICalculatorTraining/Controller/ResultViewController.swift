//
//  ResultViewController.swift
//  BMICalculatorTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 28/10/22.
//

import UIKit

class ResultViewController: UIViewController {
  
  var bmiValue: String?
  var advice: String?
  var color: UIColor?
  
  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var adviceLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    bmiLabel.text = bmiValue
    adviceLabel.text = advice
    view.backgroundColor = color
  }
  
  @IBAction func recalculatePressed(_ sender: UIButton) {
    self.dismiss(animated: true)
  }
  
}
