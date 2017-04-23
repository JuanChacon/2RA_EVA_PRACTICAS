//
//  ViewController.swift
//  2DA_EVA_6_PickerView
// <Juan Chacon Holguin>
// <Plataforma I>
//  Created by  on 16/03/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
let asDatos = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo","PASADOMAÑANA","ALFILO DEL MAÑANA","CAMION","OIGA ME NO"]
    
 let asData = ["Monday","Tuesday","Wensday","Thrusday","Friday","Saturday","Sunday","Summer","ALF","CAMION","OIGA ME NO"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //titulo del picker view
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
        return asDatos[row]//fila que se debe refrescar (mostrar el text)
        }else{
        return asData[row]//fila que se debe refrescar (mostrar el text)
        }
        
    }
    //numero de componentes del pickerview
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //numero de origen de datos, un arreglo
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa: String
        if component == 0{
            sMensa = asDatos[row]//fila que se debe refrescar (mostrar el text)
        }else{
            sMensa = asData[row]//fila que se debe refrescar (mostrar el text)
        }
        let actShow = UIAlertController(title: "picker view",message: sMensa,preferredStyle: .Alert)
        let acBotton = UIAlertAction(title: "ok", style: .Default, handler: nil)
        actShow.addAction(acBotton)
        presentViewController(actShow, animated: true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return asDatos.count //Cantidad de datos del componente
        }else{
            return asData.count //Cantidad de datos del componente
        }
    }
    //regresa una vista, las genera, lee el arreglo y los pone en la vista
    
}

