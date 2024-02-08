//
//  ViewController.swift
//  HW2.4_UISlider_Anna
//
//  Created by Анна on 08.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var currentColor: UIView!
    
    @IBOutlet weak var valueOfRedSlider: UILabel!
    @IBOutlet weak var valueOfGreenSlider: UILabel!
    @IBOutlet weak var valueOfBlueSlider: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redValue: CGFloat = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentColor.layer.cornerRadius = 20
        initialValuesOfTheSliders()
    }
    
    @IBAction func pressedSlider(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redValue = CGFloat(round(redSlider.value  *  100) / 100)
            valueOfRedSlider.text = redValue.formatted()
        case greenSlider:
            greenValue = CGFloat(round(greenSlider.value  *  100) / 100)
            valueOfGreenSlider.text = greenValue.formatted()
        default:
            blueValue = CGFloat(round(blueSlider.value  *  100) / 100)
            valueOfBlueSlider.text = blueValue.formatted()
        }
        
        currentColor.backgroundColor = UIColor(
            cgColor: .init(
                red: redValue,
                green: greenValue,
                blue: blueValue,
                alpha: 1)
        )
    }
}
