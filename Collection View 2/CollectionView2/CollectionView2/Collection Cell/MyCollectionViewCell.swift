//
//  MyCollectionViewCell.swift
//  CollectionView2
//
//  Created by Yitong Pei on 23/6/2022.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib (nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure(with model: Model){
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFill // change the photo size, let the photo gallary becomes tidiness
    }

}
