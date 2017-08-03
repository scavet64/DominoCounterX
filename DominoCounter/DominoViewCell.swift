//
//  DominoViewCell.swift
//  DominoCounter
//
//  Created by Vincent Scavetta on 7/4/17.
//  Copyright © 2017 Vincent Scavetta. All rights reserved.
//

import UIKit

class DominoViewCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    //@IBOutlet weak var button: UIButton!
    
    func configureCell(dominoNumber: String){
        thumbImg.image = UIImage(named: dominoNumber)
        //button.alpha = 0.0
    }
    
}
