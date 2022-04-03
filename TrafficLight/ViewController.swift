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
    }

    @IBAction func makeStartAction() {
        
    }
    
    
}

