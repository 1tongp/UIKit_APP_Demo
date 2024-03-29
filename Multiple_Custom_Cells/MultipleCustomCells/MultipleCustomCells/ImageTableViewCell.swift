//
//  ImageTableViewCell.swift
//  MultipleCustomCells
//
//  Created by Yitong Pei on 6/7/2022.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "ImageTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    public func configure(with imageName: String){
        myImageView.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
