//
//  FISReposTableViewController.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposTableViewController: UITableViewController {
    
    var store = ReposDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.accessibilityLabel = "tableView"
        
        GithubAPIClient.getRepositories { (repos, error) in
            if repos != nil {
                print("Success")
            } else if let error = error {
                print("Error in the vieDidLoad \(error.localizedDescription)")
            }
        }

        
    }

    // MARK: - Table view data source
 

}
