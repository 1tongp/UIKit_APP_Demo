//
//  CodedTableViewCell.swift
//  MultipleCustomCells
//
//  Created by Yitong Pei on 6/7/2022.
//

import UIKit

class CodedTableViewCell: UITableViewCell {

    static let identifier = "CodedTableViewCell"
    
    private let mylabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    public func configure(){
        contentView.addSubview(mylabel)
        contentView.addSubview(myImageView)
        
        mylabel.text = "It Works"
        mylabel.textAlignment = .center
        myImageView.image = UIImage(named: "Image2")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        mylabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
    }

    
}
