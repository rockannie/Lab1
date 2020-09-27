//
//  ViewController.swift
//  Lab3
//
//  Created by Maggie Ryan on 9/22/20.
//  Copyright © 2020 Maggie Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeSlider(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            frogSmile.image = UIImage(named: "frogsmiling")
            titleLabel.text = "A very smiley frog"
        }
        else if sender.selectedSegmentIndex == 1{
            frogSmile.image = UIImage(named: "notsmiling")
            titleLabel.text = "A not so smiley frog"
        }
    }
    
    @IBAction func partySwitch(_ sender: UISwitch) {
        if sender.isOn{
            titleLabel.text = titleLabel.text?.uppercased()
            titleLabel.textColor = UIColor.red
        }
        else{
            titleLabel.text = titleLabel.text?.lowercased()
            titleLabel.textColor = UIColor.blue
        }
    }
    
    @IBAction func changeFontsize(_ sender: UISlider) {
        let fontSize = sender.value
        
        fontsizeLabel.text = String(format: "%.0f", fontSize)
        
        let fontSizeCGFloat = CGFloat(fontSize)
        titleLabel.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    @IBOutlet weak var fontsizeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var frogSmile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

