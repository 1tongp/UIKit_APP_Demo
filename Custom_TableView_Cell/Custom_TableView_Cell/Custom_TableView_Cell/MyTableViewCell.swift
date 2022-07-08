//
//  MyTableViewCell.swift
//  Custom_TableView_Cell
//
//  Created by Yitong Pei on 8/7/2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String){
        
        // the title of this type of cell can not show up, idk why ??, but the image view is working. We can only see the "gear" icon int this cell. 
        myLabel.text = title
        myImageView.image = UIImage(systemName: imageName)
    }
    
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        myImageView.contentMode = .scaleAspectFill
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
