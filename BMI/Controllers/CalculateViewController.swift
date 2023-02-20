//
//  ViewController.swift
//  BMI
//
//  Created by Anton  on 15.02.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        let heightLabelValue = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(heightLabelValue)m"
        
 
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weightLabelValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weightLabelValue)kg"
    
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as!  ResultsViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

