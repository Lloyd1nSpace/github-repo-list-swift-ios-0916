//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct GithubRepository {
    let fullName: String
    let htmlURL: URL
    let repositoryID: String
    
    init(dictionary: [String : Any]) {
        self.fullName = dictionary["full_name"] as! String
        let owner = dictionary["owner"] as! [String : Any]
        self.htmlURL = URL(string: owner["html_url"] as! String)!
        self.repositoryID = "\(owner["id"] as! Int)"
    }
    
}
