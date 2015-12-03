//
//  InterfaceController.swift
//  PizzaWatchProject WatchKit Extension
//
//  Created by Gabriel Urso Santana Reyes on 2/12/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var mediana: WKInterfaceSwitch!
    @IBOutlet var grande: WKInterfaceSwitch!
    @IBOutlet var chica: WKInterfaceSwitch!
    var tamañoElegido = "grande"
    
    
    @IBAction func elijeGrande(value: Bool) {
        if value{
            self.tamañoElegido = "grande"
            self.chica.setOn(false)
            self.mediana.setOn(false)
        }
        else{
            self.grande.setOn(true)
        }
    }
    
    @IBAction func elijeMediana(value: Bool) {
        if value{
            self.tamañoElegido = "grande"
            self.grande.setOn(false)
            self.chica.setOn(false)
        }
        else{
            self.mediana.setOn(true)
        }
    }
    @IBAction func elijeChica(value: Bool) {
        if value{
            self.tamañoElegido = "chica"

            self.grande.setOn(false)
            self.mediana.setOn(false)
        }
        else{
            self.chica.setOn(true)
        }
    }
    
    @IBAction func elijeMasa() {
        let miPizza = Pizza()
        miPizza.tamaño = self.tamañoElegido
        self.pushControllerWithName("masaController", context: miPizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
