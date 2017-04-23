//
//  ViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by  on 23/03/17.
//
//

import UIKit

class ViewController: UIViewController {
    //handler = que accion se realiazara cuando preciones el boton
    @IBAction func BtnAction(sender: AnyObject) {
        let alertController = UIAlertController(title: "Pantallaso", message: "mostrae pantallas", preferredStyle: .Alert)
        let CGreen = UIAlertAction(title: "Verde", style: .Default, handler: {action in self.performSegueWithIdentifier("verde", sender: self)})
        let CRed = UIAlertAction(title: "Red", style: .Default, handler: {action in self.performSegueWithIdentifier("rojo", sender: self)})
        alertController.addAction(CGreen)
        alertController.addAction(CRed)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //funcion para interacturar  con las pantallas
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verde"{
            // se le hizo un cast para que se puede acceder
            let miViewController = segue.destinationViewController as! ViewControllerGreen
            miViewController.sTxt = "Hola"
        }
        
    }
    
    
}

