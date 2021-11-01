//
//  Category.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var imageName: String
    private(set) public var title: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
