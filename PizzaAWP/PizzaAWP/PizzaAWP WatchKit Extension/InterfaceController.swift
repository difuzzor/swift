//
//  InterfaceController.swift
//  PizzaAWP WatchKit Extension
//
//  Created by DWIT on 6/27/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pickTam: WKInterfacePicker!
    @IBOutlet var pickMas: WKInterfacePicker!
    @IBOutlet var pickQue: WKInterfacePicker!
    
    var seltam : Int = 0
    var selmas : Int = 0
    var selque : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var pickerItems: [WKPickerItem] = []
        
        let items = WKPickerItem()
        items.title = "Selecciona"
        pickerItems.append(items)
        
        let itemc = WKPickerItem()
        itemc.title = "Chica"
        pickerItems.append(itemc)
        
        let itemm = WKPickerItem()
        itemm.title = "Mediana"
        pickerItems.append(itemm)
        
        let itemg = WKPickerItem()
        itemg.title = "Grande"
        pickerItems.append(itemg)
        
        pickTam.setItems(pickerItems)
        
        var pickerItemsMasa: [WKPickerItem] = []
        
        let itemss = WKPickerItem()
        itemss.title = "Selecciona"
        pickerItemsMasa.append(itemss)
        
        let itemcmasa = WKPickerItem()
        itemcmasa.title = "Crujiente"
        pickerItemsMasa.append(itemcmasa)
        
        let itemd = WKPickerItem()
        itemd.title = "Delgada"
        pickerItemsMasa.append(itemd)
        
        pickMas.setItems(pickerItemsMasa)
        
        var pickerItemsQueso: [WKPickerItem] = []
        
        let itemsq = WKPickerItem()
        itemsq.title = "Selecciona"
        pickerItemsQueso.append(itemsq)
        
        let itemcMoz = WKPickerItem()
        itemcMoz.title = "Mozzarela"
        pickerItemsQueso.append(itemcMoz)
        
        let itemmch = WKPickerItem()
        itemmch.title = "Cheddar"
        pickerItemsQueso.append(itemmch)
        
        let itemman = WKPickerItem()
        itemman.title = "Manchego"
        pickerItemsQueso.append(itemman)
        
        pickQue.setItems(pickerItemsQueso)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selTam(value: Int) {
        seltam = value
    }
    @IBAction func selMas(value: Int) {
        selmas = value
    }
    @IBAction func selQue(value: Int) {
        selque = value
    }
    
    @IBAction func selecciona() {
        
    }
    @IBAction func avanza() {
        let piz = Pizza();
        piz.daTamano(seltam);
        piz.daMasa(selmas);
        piz.daQueso(selque);
        pushControllerWithName("resultado", context: piz)
    }
}
