//
//  ViewController.swift
//  3 - Slider - Stepper
//
//  Created by Mahmut Gazi Doğan on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        stepperLabel.text = "Stepper: \(Int(stepper.value))"
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        sliderLabel.text = "Slider: \(Int(sender.value))"
    }
    
    @IBAction func tikla(_ sender: Any) {
        print("Slider değer: \(Int(slider.value))")
        print("Stepper değer: \(Int(stepper.value))")
    }
}

