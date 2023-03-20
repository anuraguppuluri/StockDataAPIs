//
//  SDNewsResultsViewModel.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation
import Dispatch

class SDNewsResultsViewModel {
    var delegate: SDNewsResultsProtocol?
    var newsDataSource: [NewsDatum] = []
    
    func loadDataSource() {
        SDAPIManager.shared.decodeNews(url: K.newsURL) { [self] success, news, error in
            if success, let news = news {
                print(news.count)
                print(news)
                newsDataSource = news
                DispatchQueue.main.async { [self] in
                    delegate?.reloadTable()
                }
            } else {
                print(error!)
            }
        }
    }
    
    func segueWhenPressed(row: Int) {
        print(delegate)
        self.delegate?.segueToNewsWebsite(row: row)
    }
}
