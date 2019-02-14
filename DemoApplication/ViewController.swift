//
//  ViewController.swift
//  DemoApplication
//
//  Created by iWizards XI on 13/02/19.
//  Copyright © 2019 iWizards XI. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    
    @IBOutlet var resultLabel: UILabel!
    
    var firstNumber: Double = 0.0
    var currentOperation: CalculatorOperation? = nil
    var currentSciOperation: CalculatorSciOperation? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    @IBAction func updateNumber(_ numberButton: UIButton) {
        let numberTitle = numberButton.currentTitle!
        resultLabel.text = resultLabel.text! + numberTitle
    }
    
    @IBAction func updateOperation(_ operationButton: UIButton) {
        let operationTitle = operationButton.currentTitle!
        currentOperation = CalculatorOperation(from: operationTitle)
        let currentinput = resultLabel.text!
        firstNumber = Double(currentinput)!
        resultLabel.text = ""
    }
    
    @IBAction func performCalculation(_ sender: UIButton) {
        let currentinput = resultLabel.text!
        let secondNumber = Double(currentinput)!
        let finalValue = currentOperation!.apply(to: firstNumber, and: secondNumber)
        resultLabel.text = String(finalValue)
    }
    
    @IBAction func performSciCalculation(_ sender: UIButton) {
        let operationTitle = sender.currentTitle!
        currentSciOperation = CalculatorSciOperation(from: operationTitle)
        let degree = Double(resultLabel.text!)
        let finalValue = currentSciOperation!.apply(to: degree!)
        resultLabel.text = String(finalValue)
    }
    
    @IBAction func btnClearClicked(_ sender: Any) {
        resultLabel.text = ""
    }
    
    
}

