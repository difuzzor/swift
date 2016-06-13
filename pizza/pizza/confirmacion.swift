//
//  confirmacion.swift
//  pizza
//
//  Created by DWIT on 6/12/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import UIKit

class confirmacion: UIViewController {
    
    var pizza : Pizza?
    
    @IBOutlet weak var lista: UILabel!
    @IBOutlet weak var pizzaPreparacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        pizzaPreparacion.text = (pizza?.tamanoSeleccionado)! + "\n" + (pizza?.masaSeleccionado)! + "\n" + (pizza?.quesoSeleccionado)! + "\n Ingredientes: " +  (pizza?.ingredientesSeleccionado.description)!
    }
    
    @IBAction func aceptada(sender: AnyObject) {
        
        let result = apruebaPizza()
        
        if result.0 {
            self.navigationController?.popToRootViewControllerAnimated(true)
            pizzaPreparacion.text = ""
        }
        
        lista.text = result.1        
    }

    func apruebaPizza()-> (Bool, String) {
        
        if pizza?.tamanoSeleccionado == "" {
            return (false, "Selecciona un tamaño de Pizza")
        }
        if pizza?.masaSeleccionado == "" {
            return (false, "Selecciona una masa de Pizza")
        }
        if pizza?.quesoSeleccionado == "" {
            return (false, "Selecciona un queso de Pizza")
        }
        if pizza?.ingredientesSeleccionado.count == 0 {
            return (false, "Selecciona al menos un ingrediente")
        }
        
        return (true, "Tu pizza ha sido enviada a la cocina")
    }
}
