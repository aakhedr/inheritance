//
//  Subclass2ViewController.swift
//  Inheretence
//
//  Created by Ahmed Khedr on 3/18/18.
//  Copyright © 2018 Ahmed Khedr. All rights reserved.
//

import UIKit

class Subclass2ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension Subclass2ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifer, for: indexPath)
        cell.textLabel?.text = "Different datasource"
        
        return cell
    }
}
