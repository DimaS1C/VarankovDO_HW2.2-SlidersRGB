//
//  ViewController.swift
//  RGB-mix
//
//  Created by DimaS1C on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var lightLamp: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var alphaValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 245
        greenSlider.value = 190
        blueSlider.value = 60
        
        redValue.text = "245"
        greenValue.text = "190"
        blueValue.text = "60"
        alphaValue.text = "1.0"
        
        lightLamp.layer.cornerRadius = lightLamp.bounds.width / 2
        lightLamp.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(alphaSlider.value))
               
         
    }
    
    func changes() {
        lightLamp.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func changeRed(_ sender: Any) {
        changes()
        redValue.text = "\(Int(redSlider.value))"
    }
    
    @IBAction func changeGreen(_ sender: Any) {
        changes()
        greenValue.text = "\(Int(greenSlider.value))"
    }
    
    @IBAction func changeBlue(_ sender: Any) {
        changes()
        blueValue.text = "\(Int(blueSlider.value))"
    }
    
    @IBAction func changeAlpha(_ sender: Any) {
        changes()
        alphaValue.text = "\(round(alphaSlider.value * 10) / 10)"
    }
    
}
