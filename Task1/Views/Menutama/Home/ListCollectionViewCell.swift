//
//  ListCollectionViewCell.swift
//  Task1
//
//  Created by Indah Nurindo on 10/07/2566 BE.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageListView: UIImageView! {
        didSet {
            imageListView.contentMode = .scaleAspectFit
        }
    }
    @IBOutlet weak var labelImageView: UILabel!
    
    
}
