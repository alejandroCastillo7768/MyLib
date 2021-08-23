//
//  ProductTests.swift
//  MyLib_Tests
//
//  Created by Alejandro Castillo on 19/08/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MyLib

class ProductTests: XCTestCase {
    
    let product  = Product(id: 1, title: "Some product", price: 100.00, image: UIImage(systemName: "square")!, quantity: 0)
    let product2 = Product(id: 2, title: "Some product", price: 200.00, image: UIImage(systemName: "square")!, quantity: 0)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTitleFromProducts() {
        XCTAssertTrue(product.title != "")
    }
    
    func testIDFromProducts() {
        XCTAssertTrue(product.id > 0)
    }
    
    func testPriceFromProducts() {
        XCTAssertTrue(product.price >= 0) 
    }

}
