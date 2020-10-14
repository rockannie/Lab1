//
//  ViewController.swift
//  Project1
//
//  Created by Maggie Ryan on 10/13/20.
//  Copyright © 2020 Maggie Ryan. All rights reserved.
//

import UIKit

//global vars
var firstSegvalue: Int = 0
var secSegvalue: Int = 0
var thirdSegvalue: Int = 0
var fourthSegvalue: Int = 0

class ViewController: UIViewController {
    //these next four functions are connected to each segmentedcontroller in order. They assign values to global variables based on which option is chosen
    @IBAction func firstSegCont(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            firstSegvalue = 0
        }
        else if sender.selectedSegmentIndex == 1
        {
            firstSegvalue = 1
        }
    }
    @IBAction func secSegCont(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            secSegvalue = 0
        }
        else if sender.selectedSegmentIndex == 1
        {
            secSegvalue = 1
        }
    }
    @IBAction func thirdSegCont(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            thirdSegvalue = 0
        }
        else if sender.selectedSegmentIndex == 1
        {
            thirdSegvalue = 1
        }
    }
    @IBAction func fourthSegCont(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            fourthSegvalue = 0
        }
        else if sender.selectedSegmentIndex == 1
        {
            fourthSegvalue = 1
        }
    }
    //this is the button function. it evaluates the global vars when the generate button is pushed and displays options based on what the user chooses
    @IBAction func generateButton(_ sender: UIButton) {
        if firstSegvalue == 0 && secSegvalue == 0 && thirdSegvalue == 0 && fourthSegvalue == 0
        {
            firstResult.text = "HIKING"
            secondResult.text = "GO TO THE BEACH"
            thirdResult.text = "PICK-UP BASKETBALL"
        }
        else if firstSegvalue == 0 && secSegvalue == 0 && thirdSegvalue == 0 && fourthSegvalue == 1
        {
            firstResult.text = "BOULDERING"
            secondResult.text = "SAILING"
            thirdResult.text = "GOLF"
        }
        else if firstSegvalue == 0 && secSegvalue == 0 && thirdSegvalue == 1 && fourthSegvalue == 0
        {
            firstResult.text = "TAN"
            secondResult.text = "PICNIC"
            thirdResult.text = "GRILL"
        }
        else if firstSegvalue == 0 && secSegvalue == 1 && thirdSegvalue == 0 && fourthSegvalue == 0
        {
            firstResult.text = "HIKING"
            secondResult.text = "BIRDWATCHING"
            thirdResult.text = "FISHING"
        }
        else if firstSegvalue == 1 && secSegvalue == 0 && thirdSegvalue == 0 && fourthSegvalue == 0
        {
            firstResult.text = "BAKE COOKIES"
            secondResult.text = "DANCE PARTY"
            thirdResult.text = "SCIENCE EXPERIMENT"
        }
        else if firstSegvalue == 0 && secSegvalue == 0 && thirdSegvalue == 1 && fourthSegvalue == 1
        {
            firstResult.text = "GO TO A DERBY"
            secondResult.text = "GOLF"
            thirdResult.text = "GARDEN PARTY"
        }
        else if firstSegvalue == 0 && secSegvalue == 1 && thirdSegvalue == 0 && fourthSegvalue == 1
        {
            firstResult.text = "ARCHERY"
            secondResult.text = "BACKPACKING"
            thirdResult.text = "KAYAKING"
        }
        else if firstSegvalue == 1 && secSegvalue == 0 && thirdSegvalue == 0 && fourthSegvalue == 1
        {
            firstResult.text = "INDOOR SKYDIVING"
            secondResult.text = "TRAMPOLINE PARK"
            thirdResult.text = "LAZER TAG"
        }
        else if firstSegvalue == 0 && secSegvalue == 1 && thirdSegvalue == 1 && fourthSegvalue == 0
        {
            firstResult.text = "HAMMOCKING"
            secondResult.text = "HIKING"
            thirdResult.text = "YOGA"
        }
        else if firstSegvalue == 1 && secSegvalue == 0 && thirdSegvalue == 1 && fourthSegvalue == 0
        {
            firstResult.text = "NETFLIX & CHILL"
            secondResult.text = "BEER PONG"
            thirdResult.text = "SPA NIGHT"
        }
        else if firstSegvalue == 1 && secSegvalue == 1 && thirdSegvalue == 0 && fourthSegvalue == 0
        {
            firstResult.text = "WEIGHTLIFTING"
            secondResult.text = "YOGA"
            thirdResult.text = "CLEAN"
        }
        if firstSegvalue == 0 && secSegvalue == 1 && thirdSegvalue == 1 && fourthSegvalue == 1
        {
            firstResult.text = "FISHING"
            secondResult.text = "GET A MASSAGE"
            thirdResult.text = "TAN"
        }
        else if firstSegvalue == 1 && secSegvalue == 1 && thirdSegvalue == 1 && fourthSegvalue == 0
        {
            firstResult.text = "PLAY VIDEOGAMES"
            secondResult.text = "WATCH NETFLIX"
            thirdResult.text = "READ A BOOK"
        }
        else if firstSegvalue == 1 && secSegvalue == 1 && thirdSegvalue == 0 && fourthSegvalue == 1
        {
            firstResult.text = "PERSONAL WORKOUT"
            secondResult.text = "REDECORATE"
            thirdResult.text = "MATTRESS SURFING"
        }
        else if firstSegvalue == 1 && secSegvalue == 0 && thirdSegvalue == 1 && fourthSegvalue == 1
        {
            firstResult.text = "SEE A MOVIE"
            secondResult.text = "GET NAILS DONE"
            thirdResult.text = "GO TO THE SPA"
        }
        else if firstSegvalue == 1 && secSegvalue == 1 && thirdSegvalue == 1 && fourthSegvalue == 1
        {
            firstResult.text = "ART MUSEUM"
            secondResult.text = "PAINT"
            thirdResult.text = "COSPLAY"
        }
    }
    
    @IBOutlet weak var firstResult: UILabel!
    @IBOutlet weak var secondResult: UILabel!
    @IBOutlet weak var thirdResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}

