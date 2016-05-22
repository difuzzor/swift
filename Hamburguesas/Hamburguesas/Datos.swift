//
//  Datos.swift
//  Hamburguesas
//
//  Created by DWIT on 5/22/16.
//  Copyright © 2016 innovait. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    let colores = [ UIColor(red: 200/255, green: 30/255, blue: 30/255, alpha: 1),
                    UIColor(red: 30/255, green: 200/255, blue: 30/255, alpha: 1),
                    UIColor(red: 50/255, green: 30/255, blue: 200/255, alpha: 1),
                    UIColor(red: 200/255, green: 100/255, blue: 10/255, alpha: 1)]
    
    func regresaColor () -> UIColor {
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}

class ColeccionDePaises {
    
    var paises : [String] =
        [ "Argentina",
            "Bolivia",
            "Brasil",
            "Chile",
            "Colombia",
            "Costa Rica",
            "Cuba",
            "Ecuador",
            "El Salvador",
            "Guatemala",
            "Haití",
            "Honduras",
            "México",
            "Nicaragua",
            "Panamá",
            "Paraguay",
            "Perú",
            "Puerto Rico",
            "República Dominicana",
            "Uruguay",
            "Venezuela"]
    
    func obtenPais() -> String {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }

}

class ColeccionDeHamburguesas {

    var hamburguesas : [String] = [
        "Hamburguesa de Argentina",
    "Hamburguesa de Bolivia",
    "Hamburguesa de Brasil",
    "Hamburguesa de Chile",
    "Hamburguesa de Colombia",
    "Hamburguesa de Costa Rica",
    "Hamburguesa de Cuba",
    "Hamburguesa de Ecuador",
    "Hamburguesa de El Salvador",
    "Hamburguesa de Guatemala",
    "Hamburguesa de Haití",
    "Hamburguesa de Honduras",
    "Hamburguesa de México",
    "Hamburguesa de Nicaragua",
    "Hamburguesa de Panamá",
    "Hamburguesa de Paraguay",
    "Hamburguesa de Perú",
    "Hamburguesa de uerto Rico",
    "Hamburguesa de República Dominicana",
    "Hamburguesa de Uruguay",
    "Hamburguesa de Venezuela"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}