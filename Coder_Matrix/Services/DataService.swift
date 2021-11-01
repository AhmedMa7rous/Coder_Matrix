//
//  DataService.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    // TODO: set the data for our categories
        //Category Data
    private let Categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    // TODO: set the data for our products
        //Hats Data
    private let Hats = [
        Product(name: "Matrix Logo Graphic Beanie", price: "$18", imageName: "hat01.jpg"),
        Product(name: "Matrix Logo Hat Black", price: "$20", imageName: "hat02.jpg"),
        Product(name: "Matrix Logo Hat White", price: "$24", imageName: "hat03.jpg"),
        Product(name: "Matrix Logo Snapback", price: "$26", imageName: "hat04.jpg")
    ]
    
        //Shirts Data
    private let Shirts = [
        Product(name: "Matrix Logo Shirt Black", price: "$20", imageName: "shirt01.jpg"),
        Product(name: "Matrix Logo Badge Shirt Light Grey", price: "$22", imageName: "shirt02.jpg"),
        Product(name: "Matrix Logo Shirt Red", price: "$25", imageName: "shirt03.jpg"),
        Product(name: "Hustle Delegate Grey", price: "$27", imageName: "shirt04.jpg"),
        Product(name: "Kickflip Studios Black", price: "$29", imageName: "shirt05.jpg")
    ]
    
        //Hoodies Data
    private let Hoodies = [
        Product(name: "Matrix Logo Hoodie Grey", price: "$30", imageName: "hoodie01.jpg"),
        Product(name: "Matrix Logo Hoodie Red", price: "$32", imageName: "hoodie02.jpg"),
        Product(name: "Matrix Logo Grey", price: "$36", imageName: "hoodie03.jpg"),
        Product(name: "Matrix Logo Black", price: "$39", imageName: "hoodie04.jpg")
    ]
    
    
        //Digitals Data
    private let Digitals = [Product]()
    
    
    
    // TODO: get our data for category
    func getMyCategories() -> [Category] {
        return Categories
    }
    
    // TODO: get our data for products
        //get hats data
    func getMyProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return Shirts
        case "HOODIES":
            return Hoodies
        case "HATS":
            return Hats
        case "DIGITAL":
            return Digitals
        default:
            return Shirts
        }
        
    }
    
}
