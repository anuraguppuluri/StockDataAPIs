//
//  SDQuotesResultsViewController.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import UIKit

protocol SDQuotesResultsProtocol: AnyObject {
    func reloadTable()
}

class SDQuotesResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SDQuotesResultsProtocol {
    @IBOutlet weak var quotesTable: UITableView!
    var vm = SDQuotesResultsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initView()
        initViewModel()
        vm.loadDataSource()
    }
    
    func initView() {
        quotesTable.delegate = self
        quotesTable.dataSource = self
    }
    
    func initViewModel() {
        vm.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        quotesTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(K.quotesCellHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.quotesDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return populateCell(row: indexPath.row)
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

// MARK: — SDQuotesResultsViewController Helper Methods

extension SDQuotesResultsViewController {
    func populateCell(row: Int) -> UITableViewCell {
        let cell: SDQuotesTableViewCell? = quotesTable.dequeueReusableCell(withIdentifier: K.quotesCellID) as? SDQuotesTableViewCell
        guard let cell = cell else {
            return UITableViewCell()
        }
        if let ticker = vm.quotesDataSource[row].ticker {
            cell.tickerLabel.text = ticker
        }
        if let name = vm.quotesDataSource[row].name {
            cell.nameLabel.text = name
        }
        if let exchange = vm.quotesDataSource[row].exchangeShort {
            cell.exchangeLabel.text = exchange
        }
        if let currency = vm.quotesDataSource[row].currency {
            cell.currencyLabel.text = currency
        }
        if let price = vm.quotesDataSource[row].price {
            cell.priceLabel.text = String(price)
        }
        return cell
    }
    
    func reloadTable() {
        quotesTable.reloadData()
    }
}
