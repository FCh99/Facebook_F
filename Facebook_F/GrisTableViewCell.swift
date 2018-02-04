//
//  GrisTableViewCell.swift
//  Facebook_F
//
//  Created by Fausto Checa on 1/1/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class GrisTableViewCell: UITableViewCell {
    
    @IBOutlet weak var grisView: UIView!
    
    
    
    
    //let unicaView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 25))
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
