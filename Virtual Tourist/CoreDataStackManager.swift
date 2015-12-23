//
//  CoreDataStachManager.swift
//  Virtual Tourist
//
//  Created by Anya Gerasimchuk on 12/23/15.
//  Copyright © 2015 Anya Gerasimchuk. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStackManager {
    
    class func sharedInstance() -> CoreDataStackManager {
        struct Static {
            static let instance = CoreDataStackManager()
        }
        return Static.instance
    }
    
    lazy var dataModel:CoreDataModel = {
        return CoreDataModel(name: "VirtualTourist")
    }()
    
    lazy var dataStack:CoreDataStack = {
        return CoreDataStack(model: self.dataModel)
    }()
    
    func saveContext() {
        var error:NSError? = nil
        if self.dataStack.managedObjectContext.hasChanges {
            do {
                try self.dataStack.managedObjectContext.save()
            } catch let error1 as NSError {
                error = error1
                NSLog("Unresolved error \(error), \(error!.userInfo)")
                abort()
            }
        }
    }
}
