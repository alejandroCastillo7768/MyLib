//
//  ProductViewModel.swift
//  MyLib
//
//  Created by Alejandro Castillo on 23/08/2021.
//

import Foundation
import UIKit

public struct ProductViewModel {
    let id             : Int
    let title          : String
    var quantity       : Int
    var quantityLabel  : String
    let price          : Double
    let image          : UIImage
    var minusIsEnabled : Bool
    
    public init(product: Product) {
        self.id       = product.id
        self.title    = product.title
        self.quantity = product.quantity
        self.price    = product.price
        self.image    = product.image
        
        if quantity <= 0 {
            quantityLabel  = "0"
            minusIsEnabled = false
        } else {
            quantityLabel  = "\(quantity)"
            minusIsEnabled = true
        }
    }
}
