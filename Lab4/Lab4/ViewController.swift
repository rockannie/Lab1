//
//  ViewController.swift
//  Lab4
//
//  Created by Maggie Ryan on 10/6/20.
//  Copyright © 2020 Maggie Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var area: UITextField!
    
    @IBOutlet weak var bigfrogLabel: UILabel!
    @IBOutlet weak var bigfrogStepper: UIStepper!
    @IBAction func bigfrogupdateStepper(_ sender: UIStepper) {
        if bigfrogStepper.value == 1
        {
            bigfrogLabel.text = "1 BIG frog"
        }
        else {
            bigfrogLabel.text = String(format: "%.0f", bigfrogStepper.value) + " BIG frogs"
        }
    }
    
    
    @IBOutlet weak var smolfrogLabel: UILabel!
    @IBOutlet weak var smolfrogStepper: UIStepper!
    @IBAction func smolfrogupdateStepper(_ sender: UIStepper) {
        if smolfrogStepper.value == 1
        {
            smolfrogLabel.text = "1 smol frog"
        }
        else {
            smolfrogLabel.text = String(format: "%.0f", smolfrogStepper.value) + " smol frogs"
        }
    }
    @IBAction func getanswerButton(_ sender: UIButton) {
        var areaAns = Float(area.text!)!
        var secondThing = Float(smolfrogStepper.value + bigfrogStepper.value)
        var numberAns = secondThing / areaAns
        if numberAns > 1
        {
            answerLabel.text = "Frogs cannot evenly cover the surface."
        }
        else if numberAns <= 1
        {
            answerLabel.text = "Frogs can evenly cover the surface."
        }
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        area.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

