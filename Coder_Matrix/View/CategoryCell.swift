//
//  CategoryCell.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    func updateViewFromModel(category: Category){
        
        cellImage.image = UIImage(named: category.imageName)
        cellTitle.text = category.title
        
    }
    
    

}
