//
//  NewsViewController .swift
//  SwiftSkeleton
//
//  Created by Wilson Zhao on 1/28/15.
//  Copyright (c) 2015 Innogen. All rights reserved.
//

import Foundation
import UIKit
class NewsViewController: CenterViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, ConnectionProtocol {
    
    @IBOutlet var PostsTableView : UITableView?
    var tableData:NSMutableArray = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConnectionManager.getRedditList("dota2", limit: 10)
        
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 30;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "protoCell")
        let post:Post = tableData[indexPath.row] as Post
        
        cell.textLabel?.text = post.title
        
        return cell
    }


    
    func didGetPosts() {
        dispatch_async(dispatch_get_main_queue(), {
            //    self.tableData = bearsArray as NSMutableArray
            self.tableData = Singleton.sharedInstance.posts
            self.PostsTableView?.reloadData()
            //
            //  self.NewsTableView?.reloadData()
        })
    }
    
}