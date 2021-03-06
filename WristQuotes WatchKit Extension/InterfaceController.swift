//
//  InterfaceController.swift
//  WristQuotes WatchKit Extension
//
//  Created by William Hettinger on 3/22/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    var quotes = ["quote 1", "quote 2"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.table.setNumberOfRows(self.quotes.count, withRowType: "RowInterfaceController")
        var count = 0
        for quote in self.quotes {
            var row = table.rowController(at: count) as! RowInterfaceController
            row.quoteLabel.setText(quote)
            count += 1
        }
        
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
