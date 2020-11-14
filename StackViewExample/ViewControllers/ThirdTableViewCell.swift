//
//  ThirdTableViewCell.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 29.10.2020.
//

import UIKit

class ThirdTableViewCell: UITableViewCell,
                          UITableViewDelegate,
                          UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        tableView.delegate = self
        tableView.dataSource = self
       
        tableView.register(UINib(nibName: "ThirdTableViewCellCustomCell", bundle: nil), forCellReuseIdentifier: "Celll")

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celll") as! ThirdTableViewTableViewCell

                
        return cell
    }
    

}
