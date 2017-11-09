//
//  ButtonCtrl.swift
//  pomeloX-ios
//
//  Created by Madlab on 9/11/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class ButtonCtrl: UIStackView {
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Private Methods
    private func setupButtons() {
        // Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.cyan
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        // Add the button to the stack
        addArrangedSubview(button)
    }
}
