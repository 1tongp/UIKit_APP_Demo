//
//  FieldTableViewCell.swift
//  Custom_TableView_Cell
//
//  Created by Yitong Pei on 8/7/2022.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate{

    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    @IBOutlet var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        field.placeholder = "Enter sonething..."
        field.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
