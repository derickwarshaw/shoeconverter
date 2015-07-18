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
        
        // get string from field
        let sizeFromTextField = mensShowSizeTextField.text
        
        //convert string to int
        let numberFromTextField = sizeFromTextField.toInt()
        
        //unwrap this optional
        var integerFromTextField = numberFromTextField!
        
        //create constant and set to 30
        let conversionConstant = 30
        
        integerFromTextField += conversionConstant
        
        //unhide label
        mensConvertedShoeSizeLabel.hidden = false
        
        // convert int to string
        let stringWithUpdatedShoeSize = "\(integerFromTextField)" //convert integer to string
        
        //update label
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
    }

}

