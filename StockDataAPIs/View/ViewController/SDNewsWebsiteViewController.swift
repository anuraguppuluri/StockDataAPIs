//
//  SDNewsWebsiteViewController.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/14/23.
//

import UIKit
import WebKit

class SDNewsWebsiteViewController: UIViewController {
    @IBOutlet weak var newsWebView: WKWebView!
    var newsWebsite: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(newsWebsite)
        if let newsWebsite = newsWebsite, let url = URL(string: newsWebsite) {
            self.newsWebView.load(URLRequest(url: url))
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
