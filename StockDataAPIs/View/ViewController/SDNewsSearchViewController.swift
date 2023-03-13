//
//  SDNewsSearchViewController.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import UIKit

class SDNewsSearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
    }
    
    @IBAction func searchPressed(_ sender: Any) {
        performSegue(withIdentifier: K.newsResultsSegueID, sender: nil)
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
