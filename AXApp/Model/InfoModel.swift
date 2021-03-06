//
//  CellModel.swift
//  AXApp
//
//  Created by Rovane Moura on 05/04/19.
//  Copyright © 2019 Rovane Moura. All rights reserved.
//

enum Category : Int {
    
    case presentation = 0
    case guest = 1
    case activity = 2
    case club = 3
    case exposition = 4
    case contest = 5

}

struct InfoModel {
    
    //MARK: - Always Show
    var title: String
    var time: String
    var location: String
    var imageName: String
    var category: Category
    var isFavorite: Bool
    
    //MARK: - Preview
    var shortDescription: String
    var detail: String
    
    //MARK: - Info Page
    var fullDescription: String
    var about: String
    var bigImage: String
    
}
