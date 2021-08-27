//
//  TotalAmountTableViewCell.swift
//  MyLib
//
//  Created by Alejandro Castillo on 26/08/2021.
//

import UIKit

class TotalAmountTableViewCell: UITableViewCell {
    
    @IBOutlet weak var totalPriceLabel: UILabel?
    @IBOutlet weak var img            : UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(with: ShoppingCart? = nil) {
        totalPriceLabel?.text = "\(ShoppingCart.shared.totalPrice)"
    }
}

// agrego comentario para probar release 1.2.4
