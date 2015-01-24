//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Alice Wang on 2015-01-23.
//  Copyright (c) 2015 Alice Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: UIButton) {
        var humanYears = ""
        var dogYears:Int
        let multiplier = 7
        
        humanYears = inputTextField.text
        dogYears = humanYears.toInt()!*multiplier
        dogYearsLabel.text = String(dogYears)
        
        inputTextField.text = ""
        inputTextField.resignFirstResponder()
        
    }
    
    @IBAction func realYears(sender: UIButton) {
        var humanYears:NSString
        var dogYears:Double, humanYearsDouble:Double
        let m1 = 10.5
        let m2 = 4
        
        humanYears = inputTextField.text
        humanYearsDouble = humanYears.doubleValue
        if (humanYearsDouble <= 2) {
            dogYears = humanYearsDouble*m1
        }
        else {
            dogYears = 2*m1+(humanYearsDouble-2)*4
        }
        
        dogYearsLabel.text = "\(dogYears) real dog years"
        
        inputTextField.text = ""
        inputTextField.resignFirstResponder()
        
    }
    

}

