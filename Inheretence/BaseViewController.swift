//
//  BaseViewController.swift
//  Inheretence
//
//  Created by Ahmed Khedr on 3/18/18.
//  Copyright © 2018 Ahmed Khedr. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellReuseIdentifer = "cell"
    let datasource = [
        "iPhone",
        "iPad",
        "iPod",
        "MacBook Air",
        "MacBook Pro",
        "iMac",
        "Mac Pro",
        "Apple TV",
        "Apple Watch",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension BaseViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifer, for: indexPath)
        cell.textLabel?.text = datasource[indexPath.row]
        
        return cell
    }
}

