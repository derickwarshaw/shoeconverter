//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Derick Warshaw on 7/18/15.
//  Copyright (c) 2015 Derick Warshaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShowSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShowSizeTextField.text.toInt()!
        
        //create constant and set to 30
        let conversionConstant = 30
        
        //unhide label
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"

    }

}

