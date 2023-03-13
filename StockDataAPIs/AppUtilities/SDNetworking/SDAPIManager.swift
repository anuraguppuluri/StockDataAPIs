//
//  SDAPIManager.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation

class SDAPIManager: NSObject {
    static let shared: SDAPIManager = {
        let instance = SDAPIManager()
        return instance
    }()

    private override init() {
        super.init()
    }
    
    func decodeSchools(url: String, completionHandler: @escaping (_ success: Bool, _ results: [QuotesDatum]?, _ error: String?) -> ()) {
        SDNetworkManager.shared.getData(url: url) { success, data in
            if success {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let obj = try decoder.decode(Quotes.self, from: data!)
                    completionHandler(true, obj.data, nil)
                } catch {
                    print("Error: \(error)")
                    completionHandler(false, nil, error.localizedDescription)
                }
            } else {
                completionHandler(false, nil, "Encountered GET request error")
            }
        }
    }
    
    func decodeSchoolsInfo(url: String, completionHandler: @escaping (_ success: Bool, _ results: [NewsDatum]?, _ error: String?) -> ()) {
        SDNetworkManager.shared.getData(url: url) { success, data in
            if success {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let obj = try decoder.decode(News.self, from: data!)
                    completionHandler(true, obj.data, nil)
                } catch {
                    print("Error: \(error)")
                    completionHandler(false, nil, error.localizedDescription)
                }
            } else {
                completionHandler(false, nil, "Encountered GET request error")
            }
        }
    }
}
