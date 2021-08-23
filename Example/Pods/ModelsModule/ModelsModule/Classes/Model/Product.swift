//
//  Product.swift
//  Pods-ModelsModule_Tests
//
//  Created by Alejandro Castillo on 12/08/2021.
//

import Foundation
import UIKit

public struct Product2 {
    public let id          : Int?
    public let title       : String?
    public let price       : Double?
    public let image       : UIImage?
    
    public init(id: Int, title: String, price: Double, image: UIImage) {
        self.id     = id
        self.title  = title
        self.price  = price
        self.image  = image
    }
}
