//
//  MyTableViewController.swift
//  uikitt
//
//  Created by Uladzislau Komar on 12.03.24.
//

import UIKit

class MyTableViewController: UITableViewController {

    let data = [
        ("Title 1", "Description 1"),
        ("Title 2", "Description 2"),
        // Add more data as needed
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell class
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "cell")
        setupRefreshController()
    }

    private func setupRefreshController() {
        let refresh = UIRefreshControl()
        tableView.refreshControl = refresh
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.tableView.refreshControl?.endRefreshing()
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count // Number of cells in the table
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell

        // Configure the cell
        let item = data[indexPath.row]
        cell.titleLabel.text = item.0
        cell.descriptionLabel.text = item.1

        return cell
    }
}

