//
//  FirstViewController.swift
//  pizza
//
//  Created by DWIT on 6/12/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var pizza : Pizza = Pizza()
    
    @IBOutlet weak var tamanoSeleccionado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pizza = Pizza()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seleccionarChica(sender: AnyObject) {
        seleccionarTamano("Chica")
    }

    @IBAction func seleccionarMediana(sender: AnyObject) {
        seleccionarTamano("Mediana")
    }
    
    @IBAction func seleccionarGrande(sender: AnyObject) {
        seleccionarTamano("Grande")
    }
    
    func seleccionarTamano(tamano: String) {
        tamanoSeleccionado.text = cadenaTamano(tamano)
        
        pizza.tamanoSeleccionado = tamanoSeleccionado.text!
    }
    
    func cadenaTamano (tamano: String) -> String {
        return "Tamaño seleccionado: " + tamano
    }
    
    override func viewWillAppear(animated: Bool) {
        tamanoSeleccionado.text = self.pizza.tamanoSeleccionado
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vista = segue.destinationViewController as! SecondViewController
        
        vista.pizza = self.pizza
    }
}

