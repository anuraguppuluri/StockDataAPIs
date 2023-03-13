//
//  SDQuotesSearchViewController.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/10/23.
//

import UIKit

class SDQuotesSearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchPressed(_ sender: Any) {
        performSegue(withIdentifier: K.quotesResultsSegueID, sender: nil)
    }
    
}

