//
//  SDQuotesResultsViewModel.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation
import Dispatch

class SDQuotesResultsViewModel {
    var delegate: SDQuotesResultsProtocol?
    var quotesDataSource: [QuotesDatum] = []
    
    func loadDataSource() {
        SDAPIManager.shared.decodeQuotes(url: K.quotesURL) { [self] success, quotes, error in
            if success, let quotes = quotes {
                print(quotes)
                quotesDataSource = quotes
                DispatchQueue.main.async { [self] in
                    delegate?.reloadTable()
                }
            } else {
                print(error!)
            }
        }
    }
    
    func segueWhenPressed(row: Int) {
        //self.delegate?.segueToSchoolInfo(row: row)
    }
}
