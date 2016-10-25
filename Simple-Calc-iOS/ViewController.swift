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

    @IBAction func pressRefresh(_ sender: AnyObject) {
        numbers = []
        nextOperator = ""
        numberText.text = ""
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
        if numberText.text == "" {
            numberText.text = "0."
        }
        else {
            numberText.text! += "."
        }
    }
    
    @IBAction func pressPlus(_ sender: AnyObject) {
        nextOperator = "+"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressMinus(_ sender: AnyObject) {
        nextOperator = "-"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressTimes(_ sender: AnyObject) {
        nextOperator = "*"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressDivide(_ sender: AnyObject) {
        nextOperator = "/"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressAvg(_ sender: AnyObject) {
        nextOperator = "avg"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressCount(_ sender: AnyObject) {
        nextOperator = "count"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressFact(_ sender: AnyObject) {
        nextOperator = "fact"
        numbers.append(Double(numberText.text!)!)
        numberText.text = ""
    }
    
    @IBAction func pressEquals(_ sender: AnyObject) {
        if (numberText.text == "") {
            numbers.append(0.0)
        }
        else {
            numbers.append(Double(numberText.text!)!)
        }
        
        var result: Double = 0
        
        if nextOperator == "" {
            return
        }
        
        if nextOperator == "+" {
            if numbers.count < 2 {
                return
            }
            
            result = numbers[numbers.count - 2] + numbers[numbers.count - 1]
        }
        
        if nextOperator == "-" {
            if numbers.count < 2 {
                return
            }
            
            result = numbers[numbers.count - 2] - numbers[numbers.count - 1]
        }
        
        if nextOperator == "*" {
            if numbers.count < 2 {
                return
            }
            
            result = numbers[numbers.count - 2] * numbers[numbers.count - 1]
        }
        
        if nextOperator == "/" {
            if numbers.count < 2 {
                return
            }
            
            result = numbers[numbers.count - 2] / numbers[numbers.count - 1]
        }
        
        if nextOperator == "avg" {
            if numbers.count < 1 {
                return
            }
            
            result = numbers.reduce(0, +) / Double(numbers.count)
        }
        
        if nextOperator == "count" {
            result = Double(numbers.count)
        }
        
        if nextOperator == "fact" {
            if numbers.count != 1 && numbers[0] < 1 {
                return
            }
            
            var multiplier: Int = Int(numbers[0])
            var total: Int = multiplier
            
            while multiplier > 1 {
                total *= multiplier - 1
                multiplier -= 1
            }
            
            result = Double(total)
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

