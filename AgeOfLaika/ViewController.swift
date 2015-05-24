//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by ryan on 2015-05-24.
//  Copyright (c) 2015 Ryan Maule. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterAgeTextField: UITextField!
    @IBOutlet weak var convertedAgeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeButton(sender: UIButton) {
        let ageInHumanYears:Int = enterAgeTextField.text.toInt()!
        let convertedConstant:Int = 7
        convertedAgeLabel.text = "\(ageInHumanYears * convertedConstant)" + " in Dog Years"
        enterAgeTextField.text = ""
        enterAgeTextField.resignFirstResponder()
        convertedAgeLabel.textColor = UIColor.blueColor()
        convertedAgeLabel.hidden = false
    }

}

