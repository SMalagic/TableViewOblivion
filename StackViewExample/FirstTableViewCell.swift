//
//  FirstTableViewCell.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 29.10.2020.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var baseViewHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    @IBAction func buttonTapped(_ sender: Any) {
        imgView.image = UIImage(named: "bayrak")
        
        baseViewHeight.constant += 50
        baseView.layoutIfNeeded()
        
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
       
    }
    
}
