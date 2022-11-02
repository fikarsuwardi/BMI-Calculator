//
//  CalculateViewController.swift
//  BMICalculatorTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 27/10/22.
//

import UIKit

class CalculateViewController: UIViewController {
  
  var bmiBrain = BMIBrain()
  
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  var bmiValue = "0.0"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func heightSliderChanged(_ sender: UISlider) {
    let height = String(format:"%.2f", sender.value)
    heightLabel.text = "\(height) m"
  }
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    //    print(sender.value)
    let weight = String(format:"%.2f", sender.value)
    weightLabel.text = "\(weight) Kg"
  }
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    
    bmiBrain.calculateBMI(height: height, weight: weight)
    performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = bmiBrain.getBMIValue()
      destinationVC.advice = bmiBrain.getAdvice()
      destinationVC.color = bmiBrain.getColor()
    }
  }
}

