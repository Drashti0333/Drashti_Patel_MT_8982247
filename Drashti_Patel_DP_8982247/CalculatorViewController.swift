//
//  CalculatorViewController.swift
//  Drashti_Patel_DP_8982247
//
//  Created by user236597 on 3/9/24.
//

import UIKit

class CalculatorViewController: UIViewController {    
    // This is for text field and massage label
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var massageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    // This is for calculate button
    @IBAction func calculateButton(_ sender: Any) {
        // Check if all text fields have values
        guard let aText = aTextField.text, !aText.isEmpty,
              let bText = bTextField.text, !bText.isEmpty,
              let cText = cTextField.text, !cText.isEmpty
        else {
            // Display message if any field is empty
            massageLabel.text = "Enter a value for A, B, and to find X."
            return
            }
        // Convert text to numeric values
        guard let a = Double(aText)
        else {
            // Display message if value for A is invalid
            massageLabel.text = "The value you entered for A is invalid."
            return
        }
        guard let b = Double(bText)
        else {
            // Display message if value for B is invalid
            massageLabel.text = "The value you entered for B is invalid."
            return
        }
        guard let c = Double(cText)
        else {
            // Display message if value for C is invalid
            massageLabel.text = "The value you entered for C is invalid."
            return
        }
        
        // Calculate
        let sum = b * b - 4 * a * c
        // Check and display result
        if sum < 0 {
            valueLabel.text = ""
            massageLabel.text = "There are no results since the discriminant is less than zero."
        }
        else if sum == 0 {
            let sumx = -b / (2 * a)
            valueLabel.text = "X: \(sumx)"
            massageLabel.text = "There is only one value for x"
        }
        else {
            let x1 = (-b + sqrt(sum)) / (2 * a)
            let x2 = (-b - sqrt(sum)) / (2 * a)
            valueLabel.text = "X: \(x1) and \(x2)"
            massageLabel.text = "There are two values for"
        }
    }
    // This Button for Clear data
    @IBAction func clearButton(_ sender: Any) {
        aTextField.text = ""
        bTextField.text = ""
        cTextField.text = ""
        valueLabel.text = ""
        massageLabel.text = ""
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
