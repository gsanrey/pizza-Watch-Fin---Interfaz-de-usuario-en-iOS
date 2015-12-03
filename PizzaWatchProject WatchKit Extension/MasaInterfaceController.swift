//
//  MasaInterfaceController.swift
//  PizzaWatchProject
//
//  Created by Gabriel Urso Santana Reyes on 2/12/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    var masa = "gruesa"
    var pizza : Pizza? = nil
    @IBOutlet var delgada: WKInterfaceSwitch!
    @IBOutlet var crujiente: WKInterfaceSwitch!
    @IBOutlet var gruesa: WKInterfaceSwitch!

    @IBAction func eligeQueso() {
        pizza!.masa = self.masa
        self.pushControllerWithName("quesoController", context: pizza)

    }

    @IBAction func elijeGruesa(value: Bool) {
        if value{
            self.masa = "gruesa"
            self.delgada.setOn(false)
            self.crujiente.setOn(false)
        }
        else{
            self.gruesa.setOn(true)
        }
    }
    @IBAction func elijeCrujiente(value: Bool) {
        if value{
            self.masa = "crujiente"
            self.gruesa.setOn(false)
            self.delgada.setOn(false)
        }
        else{
            self.crujiente.setOn(true)
        }
    }
    @IBAction func elijeDelgada(value: Bool) {
        if value{
            self.masa = "delgada"
            self.gruesa.setOn(false)
            self.crujiente.setOn(false)
        }
        else{
            self.delgada.setOn(true)
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

}
