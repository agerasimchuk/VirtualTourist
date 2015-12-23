//
//  PendingPhotoDownloads.swift
//  Virtual Tourist
//
//  Created by Anya Gerasimchuk on 12/23/15.
//  Copyright © 2015 Anya Gerasimchuk. All rights reserved.
//

import Foundation

class PendingPhotoDownloads: NSObject {
    
    class func sharedInstance() -> PendingPhotoDownloads {
        struct Static {
            static let instance = PendingPhotoDownloads()
        }
        return Static.instance
    }
    
    var downloadsInProgress:[Int:AnyObject] = [Int:AnyObject]()
    var downloadQueue:NSOperationQueue
    var downloadWorkers:Set<PhotoDownload> = Set()
    
    override init() {
        downloadQueue = NSOperationQueue()
        downloadQueue.name = "Download Queue"
        downloadQueue.maxConcurrentOperationCount = 6
        super.init()
    }
    
    
}
