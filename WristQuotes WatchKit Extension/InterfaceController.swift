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
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var quotes = ["quote 1","quote 2"]
        
        self.table.setNumberOfRows(quotes.count, withRowType: "QuoteRow")
        var count = 0
        
        for quote in quotes {
            var row = self.table.rowController(at: count) as! QuoteRow
            print("row is \(count)")
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
