//
//  quesoInterfaceController.swift
//  PizzaWatchProject
//
//  Created by Gabriel Urso Santana Reyes on 2/12/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {

    var pizza : Pizza? = nil
    var tipoQueso = "mozzarella"
    
    @IBOutlet var mozzarella: WKInterfaceSwitch!
    @IBOutlet var cheddar: WKInterfaceSwitch!
    @IBOutlet var parmesano: WKInterfaceSwitch!
    @IBOutlet var sinqueso: WKInterfaceSwitch!
    
    
    @IBAction func eligeMozzarella(value: Bool) {
        if value{
            self.tipoQueso = "mozzarella"
            self.cheddar.setOn(false)
            self.parmesano.setOn(false)
            self.sinqueso.setOn(false)
        }
        else{
            self.mozzarella.setOn(true)
        }
    }
    @IBAction func eligeCheddar(value: Bool) {
        if value{
            self.tipoQueso = "cheddar"
            self.mozzarella.setOn(false)
            self.parmesano.setOn(false)
            self.sinqueso.setOn(false)
        }
        else{
            self.cheddar.setOn(true)
        }
    }
    @IBAction func eligeParmesano(value: Bool) {
        if value{
            self.tipoQueso = "parmesano"
            self.mozzarella.setOn(false)
            self.cheddar.setOn(false)
            self.sinqueso.setOn(false)
        }
        else{
            self.parmesano.setOn(true)
        }
    }
    @IBAction func eligeSinQueso(value: Bool) {
        if value{
            self.tipoQueso = "sin queso"
            self.mozzarella.setOn(false)
            self.cheddar.setOn(false)
            self.parmesano.setOn(false)
        }
        else{
            self.sinqueso.setOn(true)
        }
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.pizza = context as? Pizza
    }

    @IBAction func eligeIngredientes() {
        pizza!.queso = self.tipoQueso
        self.pushControllerWithName("ingredientesController", context: pizza)
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
