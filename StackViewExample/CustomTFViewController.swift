//
//  CustomTFViewController.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 13.11.2020.
//

import UIKit

class CustomTFViewController: UIViewController {

    @IBOutlet weak var customTF: MyCustomTextField!
    
    @IBOutlet weak var usernameTf: MyCustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        customTF.setPlaceHolder(title: "Serkan")
        usernameTf.setPlaceHolder(title: "Place")
    }
    


}
