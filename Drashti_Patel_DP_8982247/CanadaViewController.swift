//
//  CanadaViewController.swift
//  Drashti_Patel_DP_8982247
//
//  Created by user236597 on 3/8/24.
//

import UIKit

class CanadaViewController: UIViewController {
   // This is for image view, text field and massage label
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var citymessagelabel: UILabel!
    // Set the canada image as a default image
    var showImage = "canada"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // This is for hide the city message label
        citymessagelabel.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    // Button for Find my city
    @IBAction func findMyCityField(_ sender: Any) {
        // Reset the text field in the city message label
        citymessagelabel.text = ""
        // Convert the input to lowercase
        let lowercasedCityText = cityTextField.text?.lowercased()
        let cityImages: [String: String] = [
            "toronto": "Toronto",
            "vancouver": "Vancouver",
            "winnipeg": "Winnipeg",
            "halifax": "Halifax",
            "calgary": "Calgary",
            "montreal": "Montreal",
        ]
        // Check if the entered city exists
        if let imageName = cityImages[lowercasedCityText ?? ""] {
            // Set the image as the entered city name
            imageView.image = UIImage(named: imageName)
            // Show the city message label
            citymessagelabel.isHidden = false
            }
        else {
            // If city is not found, display an error message
            citymessagelabel.text = "CITY NOT FOUND"
            imageView.image = UIImage(named: "Error")
            // Show the city message label
            citymessagelabel.isHidden = false
            }
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
