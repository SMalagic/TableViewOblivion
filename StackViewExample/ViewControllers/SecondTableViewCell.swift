//
//  SecondTableViewCell.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 29.10.2020.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    @IBOutlet weak var txtView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
