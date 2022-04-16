//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitriy Ryndya on 01.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightsLabel: UIView!
    @IBOutlet var yellowLightsLabel: UIView!
    @IBOutlet var greenLigntsLabel: UIView!
    @IBOutlet var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightsLabel.layer.cornerRadius = 57.5
        yellowLightsLabel.layer.cornerRadius = 57.5
        greenLigntsLabel.layer.cornerRadius = 57.5
        toggleButton.layer.cornerRadius = 10
        redLightsLabel.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        yellowLightsLabel.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        greenLigntsLabel.backgroundColor = UIColor.green.withAlphaComponent(0.3)
    }
    

    @IBAction func makeStartAction() {
        if self.redLightsLabel.backgroundColor == UIColor.red.withAlphaComponent(0.3) && self.yellowLightsLabel.backgroundColor == UIColor.yellow.withAlphaComponent(0.3) && greenLigntsLabel.backgroundColor == UIColor.green.withAlphaComponent(0.3) {
            
            redLightsLabel.backgroundColor = UIColor.red
            toggleButton.setTitle("NEXT", for: .normal)
            
        } else if self.redLightsLabel.backgroundColor == UIColor.red {
    
            redLightsLabel.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            yellowLightsLabel.backgroundColor = UIColor.yellow

        } else if self.yellowLightsLabel.backgroundColor == UIColor.yellow {

            yellowLightsLabel.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenLigntsLabel.backgroundColor = UIColor.green
            
        } else {
            greenLigntsLabel.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            redLightsLabel.backgroundColor = UIColor.red
        }
    }
    
}
