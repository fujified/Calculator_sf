//
//  ViewController.swift
//  Calculator_sf
//
//  Created by mr spock on 12/7/20.
//  Copyright © 2020 mr spock. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
   @IBOutlet weak var textLabel: UITextField!
    
    var varNumber1 = 0
    var varNumber2 = 0
    var varResult = 0
    
    var varOperator = ""
 

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
 

    @IBAction func button0(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "0"
    }
    @IBAction func button1(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "1"
    }
    @IBAction func button2(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "2"
    }
    @IBAction func button3(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "3"
    }
    @IBAction func button4(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "4"
    }
    @IBAction func button5(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "5"
    }
    @IBAction func button6(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "6"
    }
    @IBAction func button7(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "7"
    }
    @IBAction func button8(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "8"
    }
    @IBAction func button9(_ sender: UIButton) {
        textLabel.text = textLabel.text! + "9"
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
        varOperator = "+"
        varNumber1 = Int(textLabel.text!)!
        clearResult()
    }
    @IBAction func buttonMinus(_ sender: UIButton) {
        varOperator = "-"
        varNumber1 = Int(textLabel.text!)!
        clearResult()
    }
    @IBAction func buttonMultiply(_ sender: UIButton) {
        varOperator = "x"
        varNumber1 = Int(textLabel.text!)!
        clearResult()
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        varOperator = "/"
        varNumber1 = Int(textLabel.text!)!
        clearResult()
    }
    @IBAction func buttonEqual(_ sender: UIButton) {
        varNumber2 = Int(textLabel.text!)!
        
        switch varOperator {
        case "+":
            varResult = varNumber1 + varNumber2
            textLabel.text = String(varResult)
        case "-":
            varResult = varNumber1 - varNumber2
            textLabel.text = String(varResult)
        case "/":
            varResult = varNumber1 / varNumber2
            textLabel.text = String(varResult)
        case "*":
            varResult = varNumber1 * varNumber2
            textLabel.text = String(varResult)
        default:
            textLabel.text = "ERROR"
        }
    }
    @IBAction func buttonClear(_ sender: UIButton) {
        clearResult()
    }
    
    func clearResult() {
        textLabel.text = ""
    }
}


