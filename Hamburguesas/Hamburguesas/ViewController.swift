//
//  ViewController.swift
//  Hamburguesas
//
//  Created by DWIT on 5/22/16.
//  Copyright © 2016 innovait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    
    @IBOutlet weak var etiquetaPais: UILabel!
    
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiaPaisHamburguesa() {
        etiquetaPais.text = paises.obtenPais()
        etiquetaHamburguesa.text = hamburguesas.obtenHamburguesa()
        
        view.backgroundColor = colores.regresaColor()
        view.tintColor = colores.regresaColor()
    }

}

