//
//  ViewController.swift
//  Simple-Calc-iOS
//
//  Created by Pradeep Jha on 10/25/16.
//  Copyright © 2016 Alexis Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberText: UITextField!
    
    var numbers: Array<Double> = []
    var nextOperator: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func press1(_ sender: AnyObject) {
        numberText.text! += "1"
    }
    
    @IBAction func press2(_ sender: AnyObject) {
        numberText.text! += "2"
    }
    
    @IBAction func press3(_ sender: AnyObject) {
        numberText.text! += "3"
    }
    
    @IBAction func press4(_ sender: AnyObject) {
        numberText.text! += "4"
    }
    
    @IBAction func press5(_ sender: AnyObject) {
        numberText.text! += "5"
    }
    
    @IBAction func press6(_ sender: AnyObject) {
        numberText.text! += "6"
    }
    
    @IBAction func press7(_ sender: AnyObject) {
        numberText.text! += "7"
    }
    
    @IBAction func press8(_ sender: AnyObject) {
        numberText.text! += "8"
    }
    
    @IBAction func press9(_ sender: AnyObject) {
        numberText.text! += "9"
    }
    
    @IBAction func press0(_ sender: AnyObject) {
        numberText.text! += "0"
    }
    
    @IBAction func pressDot(_ sender: AnyObject) {
        numberText.text! += "."
    }
    
    @IBAction func pressPlus(_ sender: AnyObject) {
        nextOperator = "+"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressEquals(_ sender: AnyObject) {
        numbers.append(Double(numberText.text!)!)
        
        var result: Double = 0
        
        if nextOperator == "" {
            return
        }
        
        if nextOperator == "+" {
            if numbers.count < 2 {
                return
            }
            
            result = numbers[numbers.count - 1] + numbers[numbers.count - 2]
        }
        
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            numberText.text = String(format: "%.0f", result)
        }
        else {
            numberText.text = String(result)
        }
        
        numbers = []
    }
}
