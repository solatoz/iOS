//
//  ViewController.swift
//  Calculator
//
//  Created by Jong Kim on 6/11/17.
//  Copyright © 2017 Jong Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var display: UILabel!
    
       var numberInMiddle = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
    
        let digit = sender.currentTitle!
        if numberInMiddle {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
            
        } else {
            display.text = digit
            numberInMiddle = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }


    @IBAction func performOperation(_ sender: UIButton) {
        numberInMiddle = false
        if let mathSymbol = sender.currentTitle {
            switch mathSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }

}
