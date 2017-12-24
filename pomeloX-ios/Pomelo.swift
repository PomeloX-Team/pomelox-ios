//
//  Pomelo.swift
//  pomeloX-ios
//
//  Created by Madlab on 21/12/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class Pomelo {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var date: String
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, date: String) {
        // Initialization should fail if there is no name or if the rating is negative.
        guard !name.isEmpty else {
            return nil
        }
        guard !date.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.date = date
    }
}
