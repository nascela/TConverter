//
//  ViewController.swift
//  TConverter
//
//  Created by Сергей Александров on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            
        }
    }
    
    @IBAction func changeTemp(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiumLabel.text = "\(temperatureCelsius)ºC"
        let farenheitTemperature = Int(round(sender.value * 9 / 5 + 32))
        farenheitLabel.text = "\(farenheitTemperature)ºF"
    }
}
