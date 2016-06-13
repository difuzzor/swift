//
//  Queso.swift
//  pizza
//
//  Created by DWIT on 6/12/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import UIKit

class Queso: UIViewController {

    var pizza : Pizza?
    
    @IBOutlet weak var quesoSeleccionado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func seleccionaMozzarela(sender: AnyObject) {
        seleccionaQueso("Mozzarela")
    }
    @IBAction func seleccionaCheddar(sender: AnyObject) {
        seleccionaQueso("Cheddar")
    }
    @IBAction func seleccionaParmesano(sender: AnyObject) {
        seleccionaQueso("Parmesano")
    }
    @IBAction func seleccionaSinQueso(sender: AnyObject) {
        seleccionaQueso("Sin Queso")
    }
    
    func seleccionaQueso(queso : String){
        quesoSeleccionado.text = cadenaQueso(queso)
        pizza?.quesoSeleccionado = cadenaQueso(queso)
    }
    
    func cadenaQueso(queso : String)-> String{
        return "Queso seleccionada: " + queso
    }
    
    override func viewWillAppear(animated: Bool) {
        quesoSeleccionado.text = pizza!.quesoSeleccionado
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vista = segue.destinationViewController as! Ingredientes
        
        vista.pizza = self.pizza
    }
}
