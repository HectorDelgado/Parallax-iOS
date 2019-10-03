//
//  ListTableViewController.swift
//  09-Listy
//
//  Created by Hector Delgado on 10/2/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell
            else { return UITableViewCell() }
        cell.configureCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / CGFloat(imageArray.count)
    }
}

