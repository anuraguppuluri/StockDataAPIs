//
//  SDNewsResultsViewController.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import UIKit

protocol SDNewsResultsProtocol: AnyObject {
    func reloadTable()
}

class SDNewsResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SDNewsResultsProtocol {
    @IBOutlet weak var newsTable: UITableView!
    var vm = SDNewsResultsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initView()
        initViewModel()
        vm.loadDataSource()
    }
    
    func initView() {
        newsTable.delegate = self
        newsTable.dataSource = self
    }
    
    func initViewModel() {
        vm.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        newsTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(K.newsCellHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.newsDataSource.count
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

// MARK: — SDNewsResultsViewController Helper Methods

extension SDNewsResultsViewController {
    func populateCell(row: Int) -> UITableViewCell {
        let cell: SDNewsTableViewCell? = newsTable.dequeueReusableCell(withIdentifier: K.newsCellID) as? SDNewsTableViewCell
        guard let cell = cell else {
            return UITableViewCell()
        }
        if let title = vm.newsDataSource[row].title {
            cell.titleLabel.text = title
        }
        if let description = vm.newsDataSource[row].description {
            cell.descriptionLabel.text = description
        }
        return cell
    }
    
    func reloadTable() {
        newsTable.reloadData()
    }
}
