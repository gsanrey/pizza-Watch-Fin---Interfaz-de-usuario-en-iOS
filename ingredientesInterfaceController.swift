//
//  ingredientesInterfaceController.swift
//  PizzaWatchProject
//
//  Created by Gabriel Urso Santana Reyes on 2/12/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {
    
    var pizza : Pizza? = nil
    var numeroIngredientes = 0


    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var salchica: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var jamon: WKInterfaceSwitch!
    
    @IBAction func eligeJamon(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("jamon")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("jamon")
           self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligePepperoni(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("pepperoni")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("pepperoni")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    
    @IBAction func eligePavo(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("pavo")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("pavo")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligeSalchicha(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("salchicha")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("salchicha")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligePiña(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("piña")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("piña")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligeAceituna(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("aceituna")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("aceituna")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligePimiento(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("pimiento")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("pimiento")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    @IBAction func eligeCebolla(value: Bool) {
        if value{
            self.pizza!.ingredientes.append("cebolla")
        }
        else{
            let pos = self.pizza!.ingredientes.indexOf("cebolla")
            self.pizza!.ingredientes.removeAtIndex(pos!)
        }
    }
    
    
    
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.pizza = context as? Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func hacerPedido() {
    self.pushControllerWithName("pedidoController", context: pizza)
    }
}
