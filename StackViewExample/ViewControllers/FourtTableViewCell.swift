//
//  FourtTableViewCell.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 30.10.2020.
//

import UIKit

class FourtTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource{
    

    
    @IBOutlet weak var collectionView: UICollectionView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "FourthTableViewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellCol")

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCol", for: indexPath) as! FourthTableViewCollectionViewCell
        
        
        return cell
    }
    

}
