//
//  ImageLoadDelegate.swift
//  Virtual Tourist
//
//  Created by Anya Gerasimchuk on 12/23/15.
//  Copyright © 2015 Anya Gerasimchuk. All rights reserved.
//

import Foundation
import QuartzCore

protocol ImageLoadDelegate {
    
    func progress(progress:CGFloat)

    func didFinishLoad()
}
