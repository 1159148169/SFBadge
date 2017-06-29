//
//  SFBadgeDemoTableViewController.swift
//  SFBadge
//
//  Created by Shi Feng on 2017/6/29.
//  Copyright © 2017年 Shi Feng. All rights reserved.
//

import UIKit

class SFBadgeDemoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        
        let rightBarButtonItem = UIBarButtonItem(title: "Badge Menu", style: UIBarButtonItemStyle.done, target: self, action: #selector(menu))
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SFBadgeCell", for: indexPath)
        return cell
    }
    
    func menu() {
        let alert = UIAlertController(title: "How do you want to use SFBadge?", message: "Please choose", preferredStyle: .actionSheet)
        let alertAction1 = UIAlertAction(title: "Little Round Badge", style: .default) { (_) in
//            let indexPath1 = IndexPath(row: 0, section: 0)
            let indexPathArray = self.tableView.indexPathsForVisibleRows
            for indexPath in indexPathArray! {
                let cell = self.tableView.cellForRow(at: indexPath)
                if indexPath.row == 0 {
                    cell?.setBadgeForCell(badgeID: 10, badgeForText: false, 50, UIColor.red, true, true, "")
                }
            }
        }
        let alertAction2 = UIAlertAction(title: "Text Badge", style: .default) { (_) in
//            let indexPath2 = IndexPath(row: 1, section: 0)
            let indexPathArray = self.tableView.indexPathsForVisibleRows
            for indexPath in indexPathArray! {
                let cell = self.tableView.cellForRow(at: indexPath)
                if indexPath.row == 1 {
                    cell?.setBadgeForCell(badgeID: 11, badgeForText: true, 0, UIColor.red, true, false, "SFBadgeForCell")
                }
            }
        }
        let alertAction3 = UIAlertAction(title: "Cancel", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(alertAction1)
        alert.addAction(alertAction2)
        alert.addAction(alertAction3)
        self.present(alert, animated: true, completion: nil)
    }
}
