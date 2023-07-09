//
//  CellTableViewCell.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var descCell: UILabel!
    @IBOutlet weak var bgCell: UIView! {
        didSet {
            bgCell.roundCorners(corners: [.allCorners], radius: 10)
            
        }
    }
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
