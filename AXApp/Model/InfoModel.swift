//
//  CellModel.swift
//  AXApp
//
//  Created by Rovane Moura on 05/04/19.
//  Copyright © 2019 Rovane Moura. All rights reserved.
//

import Foundation

enum Category {
    
    case presentation
    case guest

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
    
}
