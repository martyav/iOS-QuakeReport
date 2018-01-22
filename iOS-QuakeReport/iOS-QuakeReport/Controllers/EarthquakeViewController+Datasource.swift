//
//  EarthquakeEventTableViewController.swift
//  iOS-QuakeReport
//
//  Created by C4Q on 1/22/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

// This will cover the things done by EarthquakeEventAdapter and some of the things in main -> https://github.com/martyav/ud843-QuakeReport/blob/starting-point/app/src/main/java/com/example/android/quakereport/EarthquakeEventAdapter.java & https://github.com/martyav/ud843-QuakeReport/blob/starting-point/app/src/main/java/com/example/android/quakereport/EarthquakeActivity.java

extension EarthquakeViewController: UITableViewDataSource {

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
}
