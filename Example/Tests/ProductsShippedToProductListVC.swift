//
//  ProductsShippedToProductListVC.swift
//  MyLib_Tests
//
//  Created by Alejandro Castillo on 25/08/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MyLib

class ProductsShippedToProductListVC: XCTestCase {

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
    
    
    func testProductsShipped() {
        let products  : [ProductViewModel] = []
        let products2 = [ProductViewModel]()
        
        let productList  = ProductListViewController(productsList: products)
        let productList2 = ProductListViewController(productsList: products2)
        
        XCTAssertNotNil(productList)
        XCTAssertNotNil(productList2)
        
        XCTAssertTrue(products.count >= 0)
        XCTAssertTrue(products2.count >= 0)
    }

}
