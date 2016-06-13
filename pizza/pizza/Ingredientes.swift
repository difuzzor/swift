//
//  Ingredientes.swift
//  pizza
//
//  Created by DWIT on 6/12/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    var pizza : Pizza?
    
    @IBOutlet weak var ingredientesSeleccionados: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func seleccionaJamon(sender: AnyObject) {
        seleccionaIngrediente("Jamon")
    }
    @IBAction func seleccionaPeperoni(sender: AnyObject) {
        seleccionaIngrediente("Peperoni")
    }
    @IBAction func seleccionaPavo(sender: AnyObject) {
        seleccionaIngrediente("Pavo")
    }
    @IBAction func seleccionaSalchicha(sender: AnyObject) {
        seleccionaIngrediente("Salchicha")
    }
    @IBAction func seleccionaCebolla(sender: AnyObject) {
        seleccionaIngrediente("Cebolla")
    }

    @IBAction func seleccionaAceituna(sender: AnyObject) {
        seleccionaIngrediente("Aceituna")
    }
    
    
    func seleccionaIngrediente(ingrediente : String){
        if pizza?.ingredientesSeleccionado.count < 5
        {
            pizza?.ingredientesSeleccionado.append(ingrediente)
            
            ingredientesSeleccionados.text = pizza?.ingredientesSeleccionado.description
        }
        
        
    }
    @IBAction func limpiarIngredientes(sender: AnyObject) {
        ingredientesSeleccionados.text = "Selecciona ingredientes"
        pizza?.ingredientesSeleccionado = []
    }
    
    override func viewWillAppear(animated: Bool) {
        ingredientesSeleccionados.text = pizza?.ingredientesSeleccionado.description
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vista = segue.destinationViewController as! confirmacion
        
        vista.pizza = self.pizza
    }
}
