//
//  ViewController.swift
//  AXApp
//
//  Created by Rovane Moura on 05/04/19.
//  Copyright © 2019 Rovane Moura. All rights reserved.
//

import UIKit

class ViewController : UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.separatorStyle = .none

        
    }

    @IBAction func addFavorite(_ sender: UIButton) {
        
        let favoriteImage = UIImage(named: "filledHeart")
        sender.setImage(favoriteImage, for: .normal)
        
    }
    
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "info") as? TableViewCell {

            cell.selectionStyle = .none
            
            return cell
            
        }
        
        return UITableViewCell()
        
    }
}


