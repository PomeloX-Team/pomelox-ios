//
//  ViewController.swift
//  pomeloX-ios
//
//  Created by Supakit Kriangkhajorn on 11/2/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MASK: Properties
    
    @IBOutlet weak var yourNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MASK: Actions
    @IBAction func setDefaultLabelText(_: UIButton) {
          yourNameLabel.text = "Default Text"
    }
    
    

}

