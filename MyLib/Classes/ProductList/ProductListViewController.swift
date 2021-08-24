//
//  ProductListViewController.swift
//  MyLib
//
//  Created by Alejandro Castillo on 23/08/2021.
//

import UIKit

public class ProductListViewController: UIViewController {
    
    @IBOutlet weak var tableView    : UITableView?
    private var productsList        = [ProductViewModel]()
    
    
    public init(productsList: [ProductViewModel]) {
        self.productsList = productsList
        super.init(nibName: "ProductListViewController", bundle: Bundle(for: ProductListViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
}


extension ProductListViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as! ProductTableViewCell
        let productViewModel = productsList[indexPath.row]
        cell.productViewModel = productViewModel
        cell.product = productViewModel
        cell.delegate = self
//        cell.setupCellWith(product: productViewModel)
        
        return cell
    }
    
    private func setupTableView() {
        tableView?.delegate     = self
        tableView?.dataSource   = self
        
        tableView?.register(ProductTableViewCell.getNib(), forCellReuseIdentifier: ProductTableViewCell.identifier)
        
        tableView?.reloadData()
    }
}

extension ProductListViewController: ProductSelectionDelegate {
    func plusButtonSelectedDelegate(product: ProductViewModel) {
        ShoppingCart.shared.addProductToCart(product: product)
        
        if productsList[product.id].id == product.id {
            productsList[product.id].quantity += 1
            productsList[product.id].minusButtonIsHidden = false
        }
        
        tableView?.reloadData()
    }
    
    func minusButtonSelectedDelegate(product: ProductViewModel) {
        if productsList[product.id].id == product.id {
            ShoppingCart.shared.removeProductFromCart(product: product)
            productsList[product.id].quantity -= 1
        }
        if productsList[product.id].quantity <= 0 {
            productsList[product.id].minusButtonIsHidden = true
        }
        
        tableView?.reloadData()
    }
}
