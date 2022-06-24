//
//  CollectionTableViewCell.swift
//  CollectionView2
//
//  Created by Yitong Pei on 23/6/2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    static let identifier = "CollectionTableView"
    
    static func nib() -> UINib{  // return a UINib
        return UINib (nibName: "CollectionTableViewCell", bundle: nil)
        // nibName is same as the file or class name usually 
    }
    
    func configure(with models: [Model]){
        self.models = models
        collectionView.reloadData()
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var models = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Collection View (short term command to find this function)
    // the purpose of this function is to control the number of photos we want to present on each row.
    // if we return models.count, then present x photos on each row, which x is the number of models(photos) we have in the models list (which we declare before). if we return 1, then present 1 photo on each row, even if the models list has lots of photos, we only present the first one 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
    
}
