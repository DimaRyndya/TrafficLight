//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitriy Ryndya on 01.04.2022.
//

import UIKit

enum CurrentLignt {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightsLabel: UIView!
    @IBOutlet var yellowLightsLabel: UIView!
    @IBOutlet var greenLigntsLabel: UIView!
    @IBOutlet var toggleButton: UIButton!
    
    private var currentLight = CurrentLignt.red
    private let lightsOn: CGFloat = 1
    private let lightsOff: CGFloat = 0.3
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightsLabel.layer.cornerRadius = 57.5
        yellowLightsLabel.layer.cornerRadius = 57.5
        greenLigntsLabel.layer.cornerRadius = 57.5
        toggleButton.layer.cornerRadius = 10
        redLightsLabel.alpha = lightsOff
        yellowLightsLabel.alpha = lightsOff
        greenLigntsLabel.alpha = lightsOff
        view.backgroundColor = .black
    }
    

    @IBAction func makeStartAction() {
        
        toggleButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLigntsLabel.alpha = lightsOff
            redLightsLabel.alpha = lightsOn
            currentLight = .yellow
        case .yellow:
            redLightsLabel.alpha = lightsOff
            yellowLightsLabel.alpha = lightsOn
            currentLight = .green
        case .green:
            yellowLightsLabel.alpha = lightsOff
            greenLigntsLabel.alpha = lightsOn
            currentLight = .red
        }
    }
    
}
