//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Tommie on 1/23/17.
//  Copyright © 2017 Watchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtResult: UITextField!
    
    var result:Double = 0
    var currentNumber: Double = 0
    var currentOperation: String = "="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOperation = "="
        txtResult.text = ("\(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonNumber(_ sender: UIButton) {
        currentNumber = currentNumber * 10 + Double(Int(sender.titleLabel!.text!)!)
        txtResult.text = ("\(currentNumber)")
    }

    @IBAction func buttonOperation(_ sender: UIButton) {
        switch currentOperation {
            case "=":
            result = currentNumber
            case "+":
            result += currentNumber
        case "+":
            result += currentNumber
        case "-":
            result -= currentNumber
        case "*":
            result *= currentNumber
        case "/":
            result /= currentNumber
        default:
            print("Invalid operation")
        }
        
        currentNumber = 0
        txtResult.text = ("\(result)")
        
        if (sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOperation = sender.titleLabel!.text! as String!
    }
    @IBAction func buttonClear(_ sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOperation = "="
        txtResult.text = ("\(result)")
    }
}

