//
//  ShoppingCart.swift
//  Pods-ModelsModule_Tests
//
//  Created by Alejandro Castillo on 12/08/2021.
//

import Foundation

public final class ShoppingCart {
    
    public static let shared = ShoppingCart()
    public var cart          : [ProductViewModel] = []
    
    public var totalPrice    : Double {
        var result = 0 as Double
        for product in cart {
            result += product.price
        }
        return result
    }
    
    public init() { }
    
    public func getCart() -> [ProductViewModel] {
        return self.cart
    }
    
    public func addProductToCart(product: ProductViewModel) {
        self.cart.append(product)
    }
    
    public func removeProductFromCart(product: ProductViewModel) {
        if cart[product.id].id == product.id {
            cart.remove(at: product.id)
            cart[product.id].quantity -= 1
        }
    }
}
