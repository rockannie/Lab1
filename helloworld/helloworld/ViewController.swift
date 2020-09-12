//
//  ViewController.swift
//  helloworld
//
//  Created by Maggie Ryan on 9/10/20.
//  Copyright © 2020 Maggie Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var messageText: UILabel!
    @IBAction func changeFrog(_ sender: UIButton) {
        if sender.tag == 1
        {
            messageText.text = "This is a small frog"
            artImage.image = UIImage(named: "smolfrog")
        }
        else if sender.tag == 2
        {
            messageText.text = "This is a big frog"
            artImage.image = UIImage(named: "bigfrog")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

