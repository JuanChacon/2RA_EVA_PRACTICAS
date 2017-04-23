//
//  TableViewCellMiaTableViewCell.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by  on 10/03/17.
//
//

import UIKit
//Se crearan 4 variables para manipular los lables y el textView.
class TableViewCellMiaTableViewCell: UITableViewCell {
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbica: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var imgImage: UIImageView!
    @IBOutlet  var lblLema: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
