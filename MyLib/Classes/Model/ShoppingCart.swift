//
//  ShoppingCart.swift
//  Pods-ModelsModule_Tests
//
//  Created by Alejandro Castillo on 12/08/2021.
//

import Foundation

public final class ShoppingCart {
    
    public static let shared = ShoppingCart()
    public var cart          : [Product] = []
    
    public var totalPrice    : Double {
        var result = 0 as Double
        for product in cart {
            result += product.price
        }
        return result
    }
    
    public init() { }
    
    public func getCart() -> [Product] {
        return self.cart
    }
    
    public func addProductToCart(product: Product) {
        self.cart.append(product)
    }
}
