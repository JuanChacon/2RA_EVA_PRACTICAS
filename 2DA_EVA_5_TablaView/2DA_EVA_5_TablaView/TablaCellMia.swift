//
//  TablaCellMia.swift
//  2DA_EVA_5_TablaView
//
//  Created by  on 14/03/17.
//
//

//clase donde se delcaran los labels y el imageView para mostrar la informacion que se decee que se  muetsre.

import UIKit

class TablaCellMia: UITableViewCell{
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbica: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var imgImage: UIImageView!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
