//
//  ProductCell.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViewFromModel(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.name
        productPrice.text = product.price
    }
}
