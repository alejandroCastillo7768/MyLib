//
//  Product.swift
//  Pods-ModelsModule_Tests
//
//  Created by Alejandro Castillo on 12/08/2021.
//

import Foundation
import UIKit
//import Alamofire
//import React

public struct Product {
    public let id          : Int
    public let title       : String
    public let price       : Double
    public let image       : UIImage
    public let quantity    : Int
    
    public init(id: Int, title: String, price: Double, image: UIImage, quantity: Int) {
        self.id       = id
        self.title    = title
        self.price    = price
        self.image    = image
        self.quantity = quantity
    }
}
