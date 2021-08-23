//
//  ProductListViewController.swift
//  MyLib
//
//  Created by Alejandro Castillo on 23/08/2021.
//

import UIKit

class ProductListViewController: UIViewController {
    
    @IBOutlet weak var tableView    : UITableView?
    private var productsList        : [Product] = []
    
    
    init(productsList: [Product]) {
        self.productsList = productsList
        super.init(nibName: "ProductListViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
}


extension ProductListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as! ProductTableViewCell
        cell.setupCellWith(product: productsList[indexPath.row])
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
    func plusButtonSelectedDelegate(product: Product) {
        ShoppingCart.shared.addProductToCart(product: product)
        
        tableView?.reloadData()
    }
    
    func minusButtonSelectedDelegate(product: Product) {
        tableView?.reloadData()
    }
}
