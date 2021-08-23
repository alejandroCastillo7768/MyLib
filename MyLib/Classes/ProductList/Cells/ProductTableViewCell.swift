//
//  ProductTableViewCell.swift
//  MyLib
//
//  Created by Alejandro Castillo on 23/08/2021.
//

import UIKit

protocol ProductSelectionDelegate: AnyObject {
    func plusButtonSelectedDelegate(product: Product)
    func minusButtonSelectedDelegate(product: Product)
}


class ProductTableViewCell: UITableViewCell {
    
    weak var delegate:  ProductSelectionDelegate?
    
    @IBOutlet weak var productNameLabel   : UILabel?
    @IBOutlet weak var productImageView   : UIImageView?
    @IBOutlet weak var quantityOfProducts : UILabel?
    @IBOutlet weak var plusProductButton  : UIButton?
    @IBOutlet weak var minusProductButton : UIButton?
    
    static let identifier = "ProductTableViewCell"
    
    var product : Product?
    
    static func getNib() -> UINib {
        return UINib(nibName: "ProductTableViewCell", bundle: Bundle(for: ProductTableViewCell.self))
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCellWith(product: Product? = nil) {
        self.product = product
        
        productNameLabel?.text      = product?.title
        productImageView?.image     = product?.image
        quantityOfProducts?.text    = "\(product?.quantity ?? 0)"
    }
    
    
    @IBAction func didPressedPlusButton(_ sender: UIButton) {
        guard let product = self.product else { return }
        delegate?.plusButtonSelectedDelegate(product: product)
    }
    
    @IBAction func didPressedMinusButton(_ sender: UIButton) {
        guard let product = self.product else { return }
        delegate?.minusButtonSelectedDelegate(product: product)
    }
}
