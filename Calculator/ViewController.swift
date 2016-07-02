//
//  ViewController.swift
//  Calculator
//
//  Created by harshal agrawal on 7/1/16.
//  Copyright © 2016 harshal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hasStoppedTyping = false
    var firstDiplayNum = ""
    var SecondDisplayNum = ""
    var displayContainer = ""
    @IBOutlet weak var Display: UILabel!
    @IBAction func OperatorButton(sender: UIButton) {
        
        
        
        if firstDiplayNum == "" || firstDiplayNum == displayContainer {
            firstDiplayNum = displayContainer
            displayContainer = ""
        } else {
            SecondDisplayNum = displayContainer
            displayContainer = ""
        }
            
        if SecondDisplayNum != "" {
            switch sender.currentTitle! {
            case "×" :
                displayContainer = "\(Double(firstDiplayNum)! * Double(SecondDisplayNum)!)"
            case "÷" :
                displayContainer = "\(Double(firstDiplayNum)! / Double(SecondDisplayNum)!)"
            case "+" :
                displayContainer = "\(Double(firstDiplayNum)! + Double(SecondDisplayNum)!)"
            case "−" :
                displayContainer = "\(Double(firstDiplayNum)! - Double(SecondDisplayNum)!)"
            default : break
            }
            
            Display.text = displayContainer
            firstDiplayNum = displayContainer
            SecondDisplayNum = ""
            hasStoppedTyping = true
            
        }
        
        
        
        
        
        
    }
    @IBAction func Numeric(sender: UIButton) {
        if hasStoppedTyping {
            displayContainer = ""
        }
        displayContainer = displayContainer + sender.currentTitle!
       Display.text = displayContainer
        hasStoppedTyping = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hi GIt")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

