//
//  SpotListViewController.swift
//  Snacktacular
//
//  Created by Joshua Chang  on 11/1/21.
//

import UIKit

class SpotListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        var spots = ["Island Creek Oysters", "El Pelon", "Shake Shack", "Pino's Pizza"]
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
}
extension SpotListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spots.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SpotTableViewCell
        cell.nameLabel?.text = spots[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
