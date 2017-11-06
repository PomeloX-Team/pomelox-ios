//
//  ViewController.swift
//  pomeloX-ios
//
//  Created by Supakit Kriangkhajorn on 11/2/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MASK: Properties
    
    @IBOutlet weak var yourNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }
    //MASK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        yourNameLabel.text = textField.text
    }
    //MASK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
          yourNameLabel.text = "Default Text"
    }
    
    

}

