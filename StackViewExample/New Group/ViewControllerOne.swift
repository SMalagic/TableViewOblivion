//
//  ViewControllerOne.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 9.11.2020.
//

import UIKit

class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(showWhen), name: NSNotification.Name(rawValue: "showWhen"), object: nil)
    }
    

    @objc func showWhen(){
    
        performSegue(withIdentifier: "toSecond", sender: nil)
    }
}
