//
//  ViewController.swift
//  BMI
//
//  Created by Anton  on 15.02.2023.
//

import UIKit

class ViewController: UIViewController {

   
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
        print(bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true)
        
        
    }
    
}

