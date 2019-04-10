//
//  TableViewCell.swift
//  AXApp
//
//  Created by Rovane Moura on 05/04/19.
//  Copyright © 2019 Rovane Moura. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var colorTagView: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var location: UILabel!
    
    var infoModel : InfoModel! {
        
        didSet{
            
            self.title.text = infoModel.title
            self.shortDescription.text = infoModel.shortDescription
            self.detail.text = infoModel.detail
            self.time.text = infoModel.time
            self.location.text = infoModel.location
            self.infoImage.image = UIImage(named: infoModel.imageName)
            
//            if infoModel.isFavorite {
//                
//                self.favoriteButton.setImage(UIImage(named: "filledHeart"), for: .normal)
//                
//            } else {
//                
//                self.favoriteButton.setImage(UIImage(named: "emptyHeart"), for: .normal)
//                
//            }
        
        }
    }
    
}
