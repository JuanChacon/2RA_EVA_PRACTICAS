//
//  cafelore.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by  on 07/04/17.
//
//

import UIKit

class cafelore: UIViewController {

    @IBOutlet weak var imag2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var lblTitRes: UILabel!
    let Ingredientes1=["Chorizo","CostillasBBQ","Jamon","Mozzarella","Pepperoni"]
    let Ingredientes2=["Pina","QuesoOaxaca","QuesoParmesano","Salami","Salchichaitaliana"]
    
    var indice1 = 0
    var indice2 = 0
    var titutoDelRes = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitRes.text = titutoDelRes
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Se pondra el texto de cada dato del arreglo, donde se recicla la celda
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return Ingredientes1[row] //Fila que se debe refrescar (mostrar el texto)
        } else if component == 1 {
            return Ingredientes2[row]
        }
        return " "
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //Numero de componentes que contendran a los arreglos
    }
    //funcion donde se hara una accion al escoger alguna celda, en este metodo se declararon los botones, uno para confirmar y otro opara compartir la informacion en Facebook.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if component == 0 {
            image1.image = UIImage(named: Ingredientes1[row])
            indice1 = row
            
        } else {
            imag2.image = UIImage(named: Ingredientes2[row])
            indice2 = row
        }
        let actShow = UIAlertController(title: "Ingredientes del platillo",message: Ingredientes1[indice1] + " y " + Ingredientes2[indice2] ,preferredStyle: .Alert)
        let acBotton = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        actShow.addAction(acBotton)
        presentViewController(actShow, animated: true, completion: nil)
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return Ingredientes1.count //Cantidad de datos en el componente actual
        } else {
            return Ingredientes2.count //Cantidad de datos en el componente actual
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
