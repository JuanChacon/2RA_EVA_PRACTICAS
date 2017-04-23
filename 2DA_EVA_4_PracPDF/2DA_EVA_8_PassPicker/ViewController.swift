//
//  ViewController.swift
//  2DA_EVA_8_PassPicker
//
//  Created by  on 23/03/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var imgCar: UIImageView!
    @IBOutlet weak var pic: UIPickerView!
    var allIMG: [UIImage]!
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
    // func pickerView didSelectedRow es para concatenar el nombre de la imagen para despues mostararla en el imgView, si no se encuentra la imagen mandara un mensaje de  foto no disponible
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let Mo = Datos[pickerView.selectedRowInComponent(0)]
        let Co = colors[pickerView.selectedRowInComponent(1)]
        let Añ = years[pickerView.selectedRowInComponent(2)]
        
        let img = UIImage(named: Mo+Co+Añ)
        imgCar.image = img
        
        if imgCar.image == nil {
            let actShow = UIAlertController(title: "picker view",message: "Foto no disponible",preferredStyle: .Alert)
           let acBotton = UIAlertAction(title: "ok", style: .Default, handler: nil)
             actShow.addAction(acBotton)
            presentViewController(actShow, animated: true, completion: nil)
        }
    
        
        
    }
    //func numberofrowsincomponent sirve para cargar la informacion de los arreglos por componente, en otras palabras la cantidad de elementos por arreglo.
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
}

