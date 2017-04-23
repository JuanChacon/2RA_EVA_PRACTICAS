//
//  Barrafina.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by  on 04/04/17.
//
//

import UIKit

class Barrafina: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var lblNomRes: UILabel!
    
    @IBOutlet weak var Ingre: UIPickerView!
    
    @IBOutlet weak var outImg1: UIImageView!
    
    @IBOutlet weak var outImg2: UIImageView!
        let Ingredientes1=["Chorizo","CostillasBBQ","Jamon","Mozzarella","Pepperoni"]
        let Ingredientes2=["Pina","QuesoOaxaca","QuesoParmesano","Salami","Salchichaitaliana"]
    
    var indice1 = 0
    var indice2 = 0
    var NombRes = ""
    var NombTit = ""
    var Imagen = ""
    var Ing = " "
    var Ing2 = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomRes.text = NombRes
        
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
    //se declara una alerta para desplegar el dato del arreglo seleccionado, es decir el dato que esta en el arreglo, esto en la variable controlador
    //El boton manda un mensaje de ok en una alerta,mostrando el valor seleccionado.
    //controlador.addAction(boton), es para mandar llamar la alerta, el mensaje.
    //funcion donde se hara una accion al escoger alguna celda, en este metodo se declararon los botones, uno para confirmar y otro opara compartir la informacion en Facebook.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    
        if component == 0 {
            outImg1.image = UIImage(named: Ingredientes1[row])
            indice1 = row
            
        } else {
            //strMensa2 = Ingredientes2[row]
            outImg2.image = UIImage(named: Ingredientes2[row])
            indice2 = row
        }
        Ing = Ingredientes1[indice1]
        Ing2 = Ingredientes2[row]
        let actShow = UIAlertController(title: "Ingredientes del platillo",message: Ingredientes1[indice1] + " y " + Ingredientes2[indice2] ,preferredStyle: .Alert)
        let acBotton = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        let compartirAct = UIAlertAction(title: "compartir",style: .Default, handler: nil)
        actShow.addAction(acBotton)
        actShow.addAction(compartirAct)
        presentViewController(actShow, animated: true, completion: nil)
        
        //return [compartirAct]
      
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return Ingredientes1.count //Cantidad de datos en el componente actual
        } else {
            return Ingredientes2.count //Cantidad de datos en el componente actual
        }
    }
    /*
    func comparteRest(action: UIAlertAction) -> Void {
        let miTxt = "Vine a comer en " + NombTit
        let miImg = UIImage(named: Imagen)
        let mensa = "Ingredientes de platillo" + Ing + "y" + Ing2
        let actController = UIActivityViewController(activityItems: [miTxt, miImg!, mensa], applicationActivities: nil)
        presentViewController(actController, animated:true,completion:nil)
    }
    */
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
