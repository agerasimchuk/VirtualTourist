//
//  PinLocationDetail.swift
//  Virtual Tourist
//
//  Created by Anya Gerasimchuk on 12/23/15.
//  Copyright © 2015 Anya Gerasimchuk. All rights reserved.
//

import Foundation
import CoreData
import MapKit

public class PinLocationDetail: NSManagedObject {
    
    @NSManaged var locality:String
    @NSManaged var location:PinLocation
    
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    convenience init(location:PinLocation, locality:String, context:NSManagedObjectContext) {
        self.init(context: context)
        
        self.locality = locality
        self.location = location
    }
}
