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
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        self.detailTitle.text = info?.title
        self.fullDescription.text = info?.fullDescription
        self.infoImage.image = UIImage(named: info?.imageName ?? "")
        self.about.text = info?.about
        self.time.text = info?.time
        self.location.text = info?.location
        
    }
    

}
