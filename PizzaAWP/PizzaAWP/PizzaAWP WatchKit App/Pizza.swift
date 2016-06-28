//
//  Pizza.swift
//  PizzaAWP
//
//  Created by DWIT on 6/27/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    func daTamano (tam : Int) {
        
        switch tam {
        case 1:
            tamano = "chica"
        case 2:
            tamano = "mediana"
        case 3:
            tamano = "grande"
        default:
            tamano = "selecciona"
        }
    }
    
    func daMasa (tam : Int) {
        
        switch tam {
        case 1:
            masa = "crujiente"
        case 2:
            masa = "delgada"
        default:
            masa = "selecciona"
        }
    }
    
    func daQueso (tam : Int) {
        
        switch tam {
        case 1:
            queso = "Mozzarela"
        case 2:
            queso = "cheddar"
        case 3:
            queso = "manchego"
        default:
            queso = "selecciona"
        }
    }
}
