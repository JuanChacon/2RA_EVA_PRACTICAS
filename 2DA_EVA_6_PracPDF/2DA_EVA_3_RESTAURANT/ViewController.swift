
//
//  ViewController.swift
//  2DA_EVA_4_RESTAURANT
//
//  Created by JUAN on 09/03/17.
//  Copyright 2017 Juan. All rights Reserved
//2DA_EVA_6_PracPDF  Nombre de restaurant,direccion,descripcion <Manejo de tablas,datos,segues,imagenes>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//<09/03/2017>
import UIKit
//Agregar protocolos requeridos para utilizar la tabla view
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //declarar un arreglo con los nombres de los restaurants, en este caso se le puso el nombre de las imagenes, son datos de tipo cadena.
    @IBOutlet weak var etNombre: UILabel!
    
    @IBOutlet weak var etDes: UILabel!
    
    
    @IBOutlet weak var etUb: UILabel!
    @IBOutlet weak var tableView: UITableView!
   //Declarar un arreglo con los nombres de los restaurants, en este caso se le puso el nombre de las imagenes, son datos de tipo cadena.
    let misDatos=["Barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant",
                  "grahamavenuemeats","haighschocolate"]
    //Arreglo de nombre misResImg para guardar las imagenes.
    let misRestImg = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats",
                      "haighschocolate"]
    //Arreglo de nombre lema para guardar los lemas de cada restaurant.
    let lema = ["Kappa nu","Hora de la papa","Cara de papa","Hola mundo","Hora","Le fio si trae a su abuelito","Plata1","Kappa nu","forkeerestaurant","grahamavenuemeats","haighschocolate"]
    
    
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
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
                
        etNombre.text = misDatos[indexPath.row]
        etDes.text = "Far far Away"
        etUb.text = "Chupifruts"
        
        switch misDatos[indexPath.row] {
        case "Barrafina":
            self.performSegueWithIdentifier("Barrafina", sender: self)
            break
        case "bourkestreetbakery":
            self.performSegueWithIdentifier("bourkestreetbakery", sender: self)
            break
        case "cafedeadend":
            self.performSegueWithIdentifier("cafedeadend", sender: self)
            break
        case "cafeloisl":
            self.performSegueWithIdentifier("cafeloisl", sender: self)
            break
        case "cafelore":
            self.performSegueWithIdentifier("cafelore", sender: self)
            break
        default:
            break
        }
        
    }
    
    //devuelve la celda prototipo.
    //Se le daran valores a la variable celda, los cuales son los valores del arreglo.
    //indexPath es el numero de columna en cual se encuentra el dato del arreglo previamente declarado.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //la variable que se relaciona con celda, ahora se relaciona con los outlets de la clase TableViewCellMiaTableViewCell
        let celda = tableView.dequeueReusableCellWithIdentifier("miCelda") as! TableViewCellMiaTableViewCell
        celda.lblNombre.text=misDatos[indexPath.row] //El outlet lblNombre servira para asignar los valores que tiene el //arreglo
        celda.lblUbica.text = "Chupifruts"// Al outlet lblUbica se le asignara la cadena "Chupifruts"
        celda.lblDesc.text = "Far far Away" // Al outlet lblDesc se le asignara la cadena "Far far Away, nearly shrek´s house"
        celda.lblLema.text = lema[indexPath.row]
        
        let imFija = UIImage(named:misRestImg[indexPath.row])//Imagen fija de cada elemento de la tabla
        celda.imgImage.image = imFija//Asignacion de imagen fija a la vista de imagen.
        return celda
    }
    
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Barrafina"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let imgViewController2 = segue.destinationViewController as! Barrafina
                imgViewController2.NombRes = misDatos[indexPath.row]
                
               
            }
            
        }else if segue.identifier == "bourkestreetbakery"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let imgViewController = segue.destinationViewController as! bourkestreetbakery
                imgViewController.tit = misDatos[indexPath.row]
                
                
            }
            
        }else if segue.identifier == "cafedeadend"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let imgViewController = segue.destinationViewController as! cafedeadend
                imgViewController.titRest = misDatos[indexPath.row]
                
                
            }
            
        }else if segue.identifier == "cafeloisl"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let imgViewController = segue.destinationViewController as! cafeloisl
                imgViewController.titRestaurant = misDatos[indexPath.row]
                
                
            }
            
        }else if segue.identifier == "cafelore"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let imgViewController = segue.destinationViewController as! cafelore
                imgViewController.titutoDelRes = misDatos[indexPath.row]
                
                
            }
            
        }
    }
    
    
}


