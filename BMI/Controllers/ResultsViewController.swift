//
//  ResultsViewController.swift
//  BMI
//
//  Created by Anton  on 20.02.2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue

    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
}
