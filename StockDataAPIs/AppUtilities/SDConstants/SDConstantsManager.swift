//
//  SDConstantsManager.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation

struct K
{
    static let quotesURL = "https://api.stockdata.org/v1/data/quote?symbols=AAPL%2CTSLA%2CMSFT&api_token=JJx6r1iGoojHXEJhSWKz6AUOB7F9OloKFcfAJ54c"
    static let newsURL = "https://api.stockdata.org/v1/news/all?symbols=TSLA,AMZN,MSFT&filter_entities=true&language=en&api_token=JJx6r1iGoojHXEJhSWKz6AUOB7F9OloKFcfAJ54c"
    
    static let schoolsViewID = "schoolsView"
    static let schoolInfoViewID = "schoolInfoView"
    
    static let schoolsCellID = "schoolsCell"
    static let schoolsCellHeight = 143
}