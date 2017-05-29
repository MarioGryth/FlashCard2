//
//  ViewController.swift
//  FlashCard2
//
//  Created by Mario Gryth on 2017/05/29.
//  Copyright © 2017 Mario Gryth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var buttonBool = false
    var nrTimesPressed = 0
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textLabel.text = String(nrTimesPressed)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
    
        if !buttonBool {
            nrTimesPressed += 1
            textLabel.text = String(nrTimesPressed)
            
            
            if nrTimesPressed > 10 {
                textLabel.text = "BUTTON MANIAC"
                buttonBool = true
                
            }
        }
        
        
    }

}

