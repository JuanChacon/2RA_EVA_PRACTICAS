//
//  ViewController.swift
//  2DA_EVA_5_TablaView
//
//  Created by  on 14/03/17.
//
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //Declarar un arreglo con los nombres de los restaurants, en este caso se le puso el nombre de las imagenes, son datos de tipo cadena.
    let misDatos=["Barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves"]
    //Arreglo de nombre misResImg para guardar las imagenes.
    let misRestImg = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves"]
    //Declaracion del arreglo que contiene la informacion de las direcciones.
    let misDir = ["calle","calle","Denver","aurora","torton","Colorado springs","castle rock","holamundo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Func tableView =regresa el valor contenido en el arreglo, esto es la cantidad de datos que estan en el.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
        
        
    }
    //func tableView
    //se declara una alerta para desplegar el dato del arreglo seleccionado, es decir el dato que esta en el arreglo, esto en la variable controlador
    //El boton manda un mensaje de ok en una alerta,mostrando el valor seleccionado.
    //controlador.addAction(boton), es para mandar llamar la alerta, el mensaje.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title:"Tus datos",message: misDatos[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "ok",style: .Default,handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    //devuelve la celda prototipo.
    //Se le daran valores a la variable celda, los cuales son los valores del arreglo.
    //indexPath es el numero de columna en cual se encuentra el dato del arreglo previamente declarado.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //la variable que se relaciona con celda, ahora se relaciona con los outlets de la clase TableViewCellMiaTableViewCell
        let celda = tableView.dequeueReusableCellWithIdentifier("miCell") as! TablaCellMia
        celda.lblNombre.text = misDatos[indexPath.row] //El outlet lblNombre servira para asignar los valores que tiene el //arreglo
        celda.lblUbica.text = "calle siempre viva"// Al outlet lblUbica se le asignara la cadena "calle siempre viva"
        celda.lblDesc.text = misDir[indexPath.row]
        let imFija = UIImage(named:misRestImg[indexPath.row])//Imagen fija de cada elemento de la tabla
        celda.imgImage.image = imFija//Asignacion de imagen fija a la vista de imagen.
        return celda
    }
    //recuperar el texto y la imagen para publicarlo en FaceBook.
    //func tableView, esta funcion es para darle la capacidad  de compartir en facebook(ya que esta vinvulado) lo que se seleccione.
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "compartir", handler: comparteRest)
        return [compartirAct]
    }
    
    // func comparteRest,con esta funcion se obtiene la imagen del arreglo miResImg, y el nombre del restaurant que se asigno en el arreglo misDatos, despues se guardan estos datos y se publican en FaceBook. 
    func comparteRest(action: UITableViewRowAction, indexPath:NSIndexPath) -> Void {
        let miTxt = "Vine a comer en " + misDatos[indexPath.row]
        let miImg = UIImage(named: misRestImg[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTxt, miImg!], applicationActivities: nil)
        presentViewController(actController, animated:true,completion:nil)
    }
}


