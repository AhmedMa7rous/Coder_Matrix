//
//  Product.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var name: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    
    init(name: String, price: String, imageName: String) {
        self.name = name
        self.price = price
        self.imageName = imageName
    }
}
