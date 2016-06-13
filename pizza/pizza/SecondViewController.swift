//
//  SecondViewController.swift
//  pizza
//
//  Created by DWIT on 6/12/16.
//  Copyright © 2016 difuzzor. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var pizza : Pizza?
    
    @IBOutlet weak var masaSeleccionada: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func seleccionaDelgada(sender: AnyObject) {
        seleccionaMasa("Delgada")
    }
    @IBAction func seleccionaCrujiente(sender: AnyObject) {
        seleccionaMasa("Crujiente")
    }
    @IBAction func seleccionaGruesa(sender: AnyObject) {
        seleccionaMasa("Gruesa")
    }
    
    func seleccionaMasa(masa : String){
        masaSeleccionada.text = cadenaMasa(masa)
        pizza?.masaSeleccionado = cadenaMasa(masa)
    }
    
    func cadenaMasa(masa : String)-> String{
        return "Masa seleccionada: " + masa
    }

    override func viewWillAppear(animated: Bool) {
        masaSeleccionada.text = pizza!.masaSeleccionado
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vista = segue.destinationViewController as! Queso
        
        vista.pizza = self.pizza
    }
}

