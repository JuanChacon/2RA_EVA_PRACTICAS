//
//  ViewController.swift
//  2DA_EVA_8_PassPicker
//
//  Created by  on 31/03/17.
//
//
//E2DA_EVA_10V_RESTAURANT2Segue con nombre de restaurant,direccion,descripcion <Manejo de tablas,datos y segue>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//<31/03/2017>

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var picke: UIPickerView!
    var usuario = "juan"
    var pass = "CamaroAzul2017"
    @IBOutlet weak var TxtPass: UITextField!
    let Datos = ["Camaro","Mustang","Corvette","Charger","Jaguar"]
    let colors = ["Rojo","Azul","Amarillo","Plata","Negro"]
    let years = ["2010","2011","2012","2013","2014","2015","2016","2017"]
    var arregloDe = ["Camaro","Rojo","2010"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func tittleforrow sirve para mostrar la informacion de los arreglos por componente
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let datarow = ""
        if component == 0{
            return Datos[row]
        } else if component == 1 {
            return colors[row]
        }else if component == 2 {
            return years[row]
        }
        return datarow
    }
    
   
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let Mo = Datos[pickerView.selectedRowInComponent(0)]
        let Co = colors[pickerView.selectedRowInComponent(1)]
        let Añ = years[pickerView.selectedRowInComponent(2)]
        
        let img = Mo+Co+Añ
        
        if( TxtPass.text == usuario && pass == img ) {
            let actShow = UIAlertController(title: "ACCESO CONCEDIDO",message: "Bienvenido",preferredStyle: .Alert)
            let acBotton = UIAlertAction(title: "ok", style: .Default, handler: {action in self.performSegueWithIdentifier("View1", sender: self)})
            actShow.addAction(acBotton)
            presentViewController(actShow, animated: true, completion: nil)
            
        }
        let actShow = UIAlertController(title: "Contraseña incorrrecta",message: "Vuelva a intentarlo",preferredStyle: .Alert)
        let acBotton = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        actShow.addAction(acBotton)
        presentViewController(actShow, animated: true, completion: nil)
        
        
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let count = 1
        if component == 0{
            return Datos.count
        } else if component == 1 {
            return colors.count
        }else if component == 2 {
            return years.count
        }
        return count
    }
    //Regresa una vista, las genera, lee el arreglo y los pone en la vista
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "View1"{
                let imgViewController = segue.destinationViewController as! View1
                imgViewController.sNomImg = "MustangRojo2011"
                
        }
}
    
}
