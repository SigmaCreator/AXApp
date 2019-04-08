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
        categoryColor[Category.presentation.rawValue] = UIColor(red: 1, green: 0.1804, blue: 0.3333, alpha: 1.0) /* #ff2e55 */
        categoryColor[Category.guest.rawValue] = UIColor(red: 0.6235, green: 0.7686, blue: 0.9255, alpha: 1.0) /* #9fc4ec */
        categoryColor[Category.activity.rawValue] = UIColor(red: 0.7098, green: 0.8824, blue: 0.7412, alpha: 1.0) /* #b5e1bd */
        categoryColor[Category.club.rawValue] = UIColor(red: 0.9255, green: 0.8, blue: 0.6235, alpha: 1.0) /* #eccc9f */
        categoryColor[Category.exposition.rawValue] = UIColor(red: 0.9255, green: 0.8667, blue: 0.6235, alpha: 1.0) /* #ecdd9f */
        categoryColor[Category.contest.rawValue] = UIColor(red: 0.7255, green: 0.7255, blue: 0.8784, alpha: 1.0) /* #b9b9e0 */
        
        // Set data
        let one = InfoModel(title: "Inscrições",
                            time: "10:00",
                            location: "Sala 01",
                            imageName: "sailor",
                            category: .contest,
                            isFavorite: false,
                            shortDescription: "Concurso Cosplay",
                            detail: "",
                            fullDescription: "Concurso de Cosplay de todas as categorias",
                            about: "Incrições a partir das 08:00")
        
        let two = InfoModel(title: "Estandes",
                            time: "11:00",
                            location: "Área de Estandes",
                            imageName: "Estandes",
                            category: .guest,
                            isFavorite: false,
                            shortDescription: "Artigos temáticos à venda",
                            detail: "",
                            fullDescription: "Estandes com Artigos temáticos de diversos tipos à venda!",
                            about: "Venha Conferir")
        
        let three = InfoModel(title: "De Volta Para o Futuro",
                              time: "12:30",
                              location: "Sala 02",
                              imageName: "deVoltaPara",
                              category: .exposition,
                              isFavorite: false,
                              shortDescription: "Exposição",
                              detail: "",
                              fullDescription: "Exposição do filme De Volta Para o Futuro",
                              about: "Venha Conferir")
        
        let four = InfoModel(title: "Harry Potter",
                             time: "12:50",
                             location: "Sala 05",
                             imageName: "harry",
                             category: .club,
                             isFavorite: false,
                             shortDescription: "Sala temática",
                             detail: "",
                             fullDescription: "Sala temática de Harry Potter",
                             about: "Venha conferir")
        
        let five = InfoModel(title: "Ragnarok",
                             time: "14:00",
                             location: "Sala 07",
                             imageName: "ragnarok",
                             category: .club,
                             isFavorite: false,
                             shortDescription: "Sala temática",
                             detail: "",
                             fullDescription: "Sala temática do jogo Ragnarok",
                             about: "Venha conferir")
        
        let six = InfoModel(title: "Isaac Bardavid",
                             time: "14:20",
                             location: "Palco principal",
                             imageName: "Isaac",
                             category: .guest,
                             isFavorite: false,
                             shortDescription: "Dublador do Wolverine",
                             detail: "A vida de um dublador no Brasil",
                             fullDescription: "Isaac Bardavid é um ator, dublador e poeta brasileiro. Como dublador, é conhecido pelas vozes do Wolverine, o Esqueleto de He-Man, Tigrão, o amigo do Ursinho Pooh, Robotnik de Sonic The Hedgehog SatAM e o computador K.I.T.T. do seriado A Super Máquina.",
                             about: "Isaac vai nos contar sobre sua vida como dublador no Brasil, lembrando dos melhores momentos e das maiores dificuldades. Também vamos ouvir sobre como foi dublar Wolverine pro tantos anos! Duração: 1h")
        
        let seven = InfoModel(title: "Rolandinho e Bock",
                             time: "15:00",
                             location: "Palco Web",
                             imageName: "rolandinho",
                             category: .guest,
                             isFavorite: false,
                             shortDescription: "Pipocando",
                             detail: "Como chegamos até aqui",
                             fullDescription: "Conversa com Rolandinho e Bock: Como chegamos até aqui!",
                             about: "Venha conferir")
        
        let eight = InfoModel(title: "Campeonato de Guitar Hero",
                              time: "15:10",
                              location: "Arena Games",
                              imageName: "guitarHero",
                              category: .contest,
                              isFavorite: false,
                              shortDescription: "Pipocando",
                              detail: "Inscrições 30min antes",
                              fullDescription: "Inscrições 30min antes",
                              about: "Venha conferir")
        
        let nine = InfoModel(title: "Cid",
                              time: "15:10",
                              location: "Palco Web",
                              imageName: "cidNormal",
                              category: .guest,
                              isFavorite: false,
                              shortDescription: "Não Salvo",
                              detail: "O humor na internet",
                              fullDescription: "Conversa com Cid do Não Salvo, O humor na internet!",
                              about: "Venha conferir")
        
        let ten = InfoModel(title: "Sessão de fotos",
                             time: "16:40",
                             location: "Palco Web",
                             imageName: "cidNormal",
                             category: .activity,
                             isFavorite: false,
                             shortDescription: "Não Salvo",
                             detail: "O humor na internet",
                             fullDescription: "Sessāo de fotos com Cid do Não Salvo.",
                             about: "Venha conferir")
        
        infos.append(one)
        infos.append(two)
        infos.append(three)
        infos.append(four)
        infos.append(five)
        infos.append(six)
        infos.append(seven)
        infos.append(eight)
        infos.append(nine)
        infos.append(ten)
        
        
        // Show AX logo
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        let scale : CGFloat = 1
        imageView.frame = CGRect(x: imageView.frame.minX, y: imageView.frame.minY, width: imageView.frame.width * scale, height: imageView.frame.height * scale)
        navigationItem.titleView = imageView
        
    }

    @IBAction func addFavorite(_ sender: UIButton) {
        
        let favoriteImage = UIImage(named: "filledHeart")
        
        if favoriteImage != sender.currentImage{
            sender.setImage(favoriteImage, for: .normal)
        }else{
            let favoriteEmpty = UIImage(named: "emptyHeart")
            sender.setImage(favoriteEmpty, for: .normal)
        }
        
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
            
            cell.favoriteButton.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
            
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


