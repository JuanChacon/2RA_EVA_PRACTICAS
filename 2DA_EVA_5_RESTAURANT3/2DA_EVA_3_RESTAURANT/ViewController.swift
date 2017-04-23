
//
//  ViewController.swift
//  2DA_EVA_4_RESTAURANT
//
//  Created by JUAN on 09/03/17.
//  Copyright 2017 Juan. All rights Reserved
//EVA_2 TABLAS2_Restaurand con nombre de restaurant,direccion,descripcion <Manejo de tablas y datos>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//<09/03/2017>
import UIKit
//agregar protocolos requeridos para utilizar la tabla view
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //declarar un arreglo con los nombres de los restaurants, en este caso se le puso el nombre de las imagenes, son datos de tipo cadena.
    let misDatos=["Barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    //arreglo de nombre misResImg para guardar las imagenes.
    let misRestImg = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    
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
        let celda = tableView.dequeueReusableCellWithIdentifier("miCelda") as! TableViewCellMiaTableViewCell
        celda.lblNombre.text=misDatos[indexPath.row] //El outlet lblNombre servira para asignar los valores que tiene el //arreglo
        celda.lblUbica.text = "Chupifruts"// Al outlet lblUbica se le asignara la cadena "Chupifruts"
        celda.lblDesc.text = "Far far Away, nearly shrek´s house" // Al outlet lblDesc se le asignara la cadena "Far far Away, nearly shrek´s house"
        
        let imFija = UIImage(named:misRestImg[indexPath.row])//Imagen fija de cada elemento de la tabla
        celda.imgImage.image = imFija//Asignacion de imagen fija a la vista de imagen.
        return celda
    }
    //recuperar el texto y la imagen para publicarlo en FaceBook
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "compartir", handler: comparteRest)
        return [compartirAct]
        }
    
    
    func comparteRest(action: UITableViewRowAction, indexPath:NSIndexPath) -> Void {
        let miTxt = "Vine a comer en " + misDatos[indexPath.row]
        let miImg = UIImage(named: misRestImg[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTxt, miImg!], applicationActivities: nil)
        presentViewController(actController, animated:true,completion:nil)
    }
}


