//
//  NewsViewController .swift
//  SwiftSkeleton
//
//  Created by Wilson Zhao on 1/28/15.
//  Copyright (c) 2015 Innogen. All rights reserved.
//

import Foundation
import UIKit
class NewsViewController: CenterViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    var tableData:NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConnectionManager.getRedditList("dota2", limit: 10)
        
    }

}