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
    
    var infos = [InfoModel]()
    var categoryColor = [Int : UIColor]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Set table view properties
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        
        // Set category color
        categoryColor[Category.presentation.rawValue] = .red
        categoryColor[Category.guest.rawValue] = .blue
        categoryColor[Category.activity.rawValue] = .green
        categoryColor[Category.club.rawValue] = .orange
        categoryColor[Category.exposition.rawValue] = .yellow
        categoryColor[Category.contest.rawValue] = .purple
        
        // Set data
        let one = InfoModel(title: "Inscrições",
                            time: "10:00",
                            location: "Sala 01",
                            imageName: "sailor",
                            category: .contest,
                            isFavorite: false,
                            shortDescription: "Concurso Cosplay",
                            detail: "",
                            fullDescription: "full",
                            about: "about")
        
        let two = InfoModel(title: "Estandes",
                            time: "10:00",
                            location: "Área de Estandes",
                            imageName: "sailor",
                            category: .guest,
                            isFavorite: false,
                            shortDescription: "Artigos temáticos à venda",
                            detail: "",
                            fullDescription: "full",
                            about: "about")
        
        let three = InfoModel(title: "De Volta Para o Futuro",
                              time: "10:00",
                              location: "Sala 02",
                              imageName: "sailor",
                              category: .exposition,
                              isFavorite: false,
                              shortDescription: "Exposição",
                              detail: "",
                              fullDescription: "full",
                              about: "about")
        
        let four = InfoModel(title: "Harry Potter",
                             time: "10:00",
                             location: "Sala 05",
                             imageName: "sailor",
                             category: .club,
                             isFavorite: false,
                             shortDescription: "Sala temática",
                             detail: "udhsaiud hasiudhasdiuahsdiu hauisd hasiu ahsdiu ahs uiashdaiusd a",
                             fullDescription: "full",
                             about: "about")
        
        infos.append(one)
        infos.append(two)
        infos.append(three)
        infos.append(four)
        
        // Show AX logo
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        let scale : CGFloat = 1
        imageView.frame = CGRect(x: imageView.frame.minX, y: imageView.frame.minY, width: imageView.frame.width * scale, height: imageView.frame.height * scale)
        navigationItem.titleView = imageView
        
    }

    @IBAction func addFavorite(_ sender: UIButton) {
        
        let favoriteImage = UIImage(named: "filledHeart")
        sender.setImage(favoriteImage, for: .normal)
        
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail", let detailVC = segue.destination as? DetailViewController, let selectedInfo = sender as? InfoModel {
            
            detailVC.info = selectedInfo
        }
    }
    
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return infos.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "info") as? TableViewCell {

            cell.infoModel = infos[indexPath.row]
            
            cell.selectionStyle = .none
            
            let category = cell.infoModel.category.rawValue
            
            cell.colorTagView.backgroundColor = categoryColor[category]
            
            
            
            return cell
            
        }
        
        return UITableViewCell()
        
    }
}

// MARK: Table View Delegate
extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let info = infos[indexPath.row]
        
        self.performSegue(withIdentifier: "goToDetail", sender: info)
    }
}


