//
//  pedidoInterfaceController.swift
//  PizzaWatchProject
//
//  Created by Gabriel Urso Santana Reyes on 2/12/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class pedidoInterfaceController: WKInterfaceController {
    
    var pizza : Pizza? = nil

    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {

        
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.pizza = context as? Pizza
        self.tamaño.setText(pizza!.tamaño)
        self.masa.setText(pizza!.masa)
        self.queso.setText(pizza!.queso)
        var ingred = ""
        for i in pizza!.ingredientes{
            ingred += i + " "
        }
        self.ingredientes.setText(ingred)

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
