//
//  PostTableViewCell.swift
//  Facebook_F
//
//  Created by Fausto Checa on 28/12/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    //var name = "Fausto"
    
    @IBOutlet weak var fotoName: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var fotoPrincipal: UIImageView!
    
    @IBOutlet weak var pieDeFotoLabel: UILabel!
    
    @IBAction func meGustaButton(_ sender: Any) {
        print("---> Me gusta")
    }
    
    @IBAction func comentarButton(_ sender: Any) {
        print("---> Comentar")
    }
    
    @IBAction func compartirButton(_ sender: Any) {
        print("---> Compartir")
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
