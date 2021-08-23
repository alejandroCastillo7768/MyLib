import XCTest
import MyLib

class ShoppingCartTest: XCTestCase {

    let product  = Product(id: 1, title: "Some product", price: 100.00, image: UIImage(systemName: "square")!, quantity: 0)
    let product2 = Product(id: 2, title: "Some product", price: 200.00, image: UIImage(systemName: "square")!, quantity: 0)
    
    lazy var productViewModel  = ProductViewModel(product: product)
    lazy var productViewModel2 = ProductViewModel(product: product2)
    
    
    
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
    
    func testTotalPriceFromShoppingCart() {
        ShoppingCart.shared.addProductToCart(product: productViewModel)
        ShoppingCart.shared.addProductToCart(product: productViewModel2)
        
        XCTAssert(ShoppingCart.shared.totalPrice == 300)
    }

    func testTitleFromShoppingCart() {
        XCTAssert(ShoppingCart.shared.getCart().count >= 0)
    }
}
