//
//  SDQuotesTableViewCell.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import UIKit

class SDQuotesTableViewCell: UITableViewCell {
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var exchangeLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
