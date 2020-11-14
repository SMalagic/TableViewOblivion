//
//  ViewControllerTwo.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 9.11.2020.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        

    }
    

    @IBAction func buttonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "showWhen"), object: nil)

    }
    
}
