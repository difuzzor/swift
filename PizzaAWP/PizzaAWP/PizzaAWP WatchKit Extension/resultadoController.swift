//
//  resultadoController.swift
//  PizzaAWP
//
//  Created by DWIT on 6/27/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import WatchKit
import Foundation


class resultadoController: WKInterfaceController {

    let pizza = Pizza()
    
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let p = context as! Pizza
        
        tamano.setText(p.tamano)
        masa.setText(p.masa)
        queso.setText(p.queso)
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
