//
//  FourtTableViewCell.swift
//  StackViewExample
//
//  Created by Serkan Malagiç on 30.10.2020.
//

import UIKit

class FourtTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    
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
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var kWhateverHeightYouWant = CGFloat()
        var kWhateverWidthYouWant = CGFloat()
        
        kWhateverHeightYouWant = collectionView.frame.size.height * 0.9
        kWhateverWidthYouWant  = collectionView.frame.size.width * 0.35
        
        return CGSize(width: CGFloat(kWhateverWidthYouWant) , height: CGFloat(kWhateverHeightYouWant) )
        
        
    }
    

}
