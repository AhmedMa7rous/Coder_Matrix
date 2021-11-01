//
//  ProductsVC.swift
//  Coder_Matrix
//
//  Created by Ma7rous on 10/6/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    private(set) public var products = [Product]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollectionView.dataSource = self
        productsCollectionView.delegate = self
        
        
    }

    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViewFromModel(product: product)
            return cell
        }
        
        return ProductCell()
      }
    
    
    
    
    func initProducts(category: Category){
        
        products = DataService.instance.getMyProducts(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }
    
}
