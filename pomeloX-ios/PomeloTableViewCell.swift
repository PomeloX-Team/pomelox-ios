//
//  PomeloTableViewCell.swift
//  pomeloX-ios
//
//  Created by Madlab on 24/12/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class PomeloTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
