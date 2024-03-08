//
//  ViewController.swift
//  SecondAssingment
//
//  Created by user236597 on 1/23/24.
//

import UIKit

class Lab3ViewController: UIViewController {
    // This is for text fields, text view, and label
    @IBOutlet weak var textFirstName: UITextField!
    @IBOutlet weak var textLastName: UITextField!
    @IBOutlet weak var textCountryName: UITextField!
    @IBOutlet weak var textAge: UITextField!
    @IBOutlet weak var textMessage: UITextView!
    @IBOutlet weak var lableMessage: UILabel!
    // Adding User Info
    @IBAction func addButton(_ sender: Any) {
        // Combine first name and last name to create full name
        let fullName = textFirstName.text! + " " + textLastName.text!
        // Create user info string
        let userInfo = "FullName: \(fullName)\nCountry: \(textCountryName.text!)\nAge: \(textAge.text!)"
        textMessage.text = userInfo
    }
    // This is for Submitting user info
    @IBAction func submitButton(_ sender: Any) {
        // Check if any field is empty
        if textFirstName.text!.isEmpty || textLastName.text!.isEmpty || textCountryName.text!.isEmpty || textAge.text!.isEmpty {
            lableMessage.text = "Complete the missing info!"
        }
        else {
            lableMessage.text = "Successfully submitted!"
        }
        lableMessage.isHidden = false
    }
    // Clear all text field
    @IBAction func clearButton(_ sender: Any) {
        textFirstName.text = ""
        textLastName.text = ""
        textCountryName.text = ""
        textAge.text = ""
        textMessage.text = ""
        lableMessage.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableMessage.isHidden = true
        // Do any additional setup after loading the view.
    }
}

