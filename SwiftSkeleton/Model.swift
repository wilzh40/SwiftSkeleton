//
//  Model.swift
//  SwiftSkeleton
//
//  Created by Wilson Zhao on 1/29/15.
//  Copyright (c) 2015 Innogen. All rights reserved.
//

import Foundation


class Post : NSObject {
    var title: String?
    var comments: NSMutableArray?
    var score: Int?
    var author: String?
    override init () {
        
    }
}