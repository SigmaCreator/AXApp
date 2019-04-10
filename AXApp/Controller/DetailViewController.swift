//
//  DetailViewController.swift
//  AXApp
//
//  Created by Matheus Fogiatto on 08/04/19.
//  Copyright © 2019 Rovane Moura. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var info: InfoModel?
    
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var fullDescription: UILabel!
    @IBOutlet weak var about: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    var categoryColor = [Int : UIColor]()
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        
        favoriteButton.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
        
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        // Set category color
        categoryColor[Category.presentation.rawValue] = UIColor(red: 1, green: 0.1804, blue: 0.3333, alpha: 1.0) /* #ff2e55 */
        categoryColor[Category.guest.rawValue] = UIColor(red: 0.6235, green: 0.7686, blue: 0.9255, alpha: 1.0) /* #9fc4ec */
        categoryColor[Category.activity.rawValue] = UIColor(red: 0.7098, green: 0.8824, blue: 0.7412, alpha: 1.0) /* #b5e1bd */
        categoryColor[Category.club.rawValue] = UIColor(red: 0.9255, green: 0.8, blue: 0.6235, alpha: 1.0) /* #eccc9f */
        categoryColor[Category.exposition.rawValue] = UIColor(red: 0.9255, green: 0.8667, blue: 0.6235, alpha: 1.0) /* #ecdd9f */
        categoryColor[Category.contest.rawValue] = UIColor(red: 0.7255, green: 0.7255, blue: 0.8784, alpha: 1.0) /* #b9b9e0 */

        self.detailTitle.text = info?.title
        self.fullDescription.text = info?.fullDescription
        self.infoImage.image = UIImage(named: info?.bigImage ?? "")
        self.about.text = info?.about
        self.time.text = info?.time
        self.detailLabel.text = info?.detail
        self.location.text = info?.location
        let category = info!.category.rawValue
        self.firstView.backgroundColor = categoryColor[category]
        self.secondView.backgroundColor =
            categoryColor[category]
        
    }
    
    
    @IBAction func addFavorite(_ sender: UIButton) {
        let favoriteImage = UIImage(named: "filledHeart")
        
        if favoriteImage != sender.currentImage{
            
            sender.setImage(favoriteImage, for: .normal)
            
        } else {
            
            let favoriteEmpty = UIImage(named: "emptyHeart")
            sender.setImage(favoriteEmpty, for: .normal)
            
        }
    }
    

}
