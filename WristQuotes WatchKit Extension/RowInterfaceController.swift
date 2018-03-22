//
//  RowInterfaceController.swift
//  WristQuotes WatchKit Extension
//
//  Created by William Hettinger on 3/22/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class RowInterfaceController: WKInterfaceController {

    @IBOutlet var quoteLabel: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
