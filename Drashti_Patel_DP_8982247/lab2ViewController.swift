//
//  ViewController.swift
//  FirstAssingment
//
//  Created by user236597 on 1/16/24.
//

import UIKit

class Lab2ViewController: UIViewController {
    var screenNumber:Int = 0
    var addNumber = 1
    @IBOutlet weak var textNumber: UITextField!
    // this is for increment
    @IBAction func buttonInc(_ sender: Any) {
        screenNumber = screenNumber + addNumber
        textNumber.text = String(screenNumber)
    }
    // this for decrement
    @IBAction func buttinDec(_ sender: Any) {
        screenNumber = screenNumber - addNumber
        textNumber.text = String(screenNumber)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        screenNumber = 0
        // this statement for re-adding values form starting
        addNumber = 1
        textNumber.text = String(screenNumber)
    }
    
    @IBAction func setButton(_ sender: Any) {
        addNumber = 2
        textNumber.text = String(screenNumber)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
