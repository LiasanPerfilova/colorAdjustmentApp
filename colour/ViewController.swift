//
//  ViewController.swift
//  colour
//
//  Created by Liaisan on 5/21/23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        colorView.backgroundColor = UIColor(
            red:CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        greenNumberLabel.text = String(format: "%.2f", greenSlider.value)
        blueNumberLabel.text = String(format: "%.2f" , blueSlider.value)
        
        
    }
    
    
    @IBAction func SliderAction() {
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        greenNumberLabel.text = String(format: "%.2f", greenSlider.value)
        blueNumberLabel.text = String(format: "%.2f" , blueSlider.value)
        
        
        colorView.backgroundColor = UIColor(
            red:CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
    }
    
    
    
    
}

