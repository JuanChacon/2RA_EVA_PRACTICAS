//
//  ViewController.swift
//  2DA_EVA_2_TABLES
//
//  Created by JUAN on 07/03/17.
//  Copyright 2017 Juan. All rights Reserved
//EVA_2 TABLAS <Maneja de tablas y datos>
//Written by:<Juan Humberto Chacon Holguin>
//<13550355>
//<Plataforma I>
//<28/03/2017>

import UIKit
//agregar protocolos requeridos para utilizar la tabla view
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //declarar un arreglo con 6 datos de tipo cadena
    let misDatos=["POO","Estructura de datos","Topicos de programacion","Fundamentos BD","Taller de BD","Redes","Administracion BD","Conmutacion","Admin.Redes"]
    let Semes = ["2do Semestre","3er semestre","4to semestre","4to semestre","5to semestre", "6to semestre","6to semestre","7mo semestre", "8to semestre" ]
    let img = ["java","java","java","bd","bd","redes","bd","java","redes","redes"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Func tableView =regresa el valor contenido en el arreglo, esto es la cantidad de datos que estan en el
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    //func tableView
    //se declara una alerta para desplegar el dato del arreglo seleccionado, es decir el dato que esta en el arreglo, esto en la variable controlador
    //boton manda un mensaje de ok en una alerta,mostrando el valor seleccionado
    //controlador.addAction(boton), es para mandar llamar la alerta, el mensjae
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title:"Materia de..",message: Semes[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK",style: .Default,handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    
    //devuelve la celda prototipo.
    //se le daran valores a la variable celda, los cuales son los valores del arreglo
    //indexPath es el numero de columna en cual se encuentra el dato del arreglo previamente declarado.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var celda = tableView.dequeueReusableCellWithIdentifier("miCelda")
        if celda == nil{
            celda = UITableViewCell(style: .Default, reuseIdentifier: "miCelda")
        }
        celda?.textLabel?.text=misDatos[indexPath.row]
        let imFija = UIImage(named:img[indexPath.row])//imagen fija de cada elemento de la tabla
        celda?.imageView?.image = imFija//asignacion de imagen fija a cada celda.
        //celda?.imageView?.highlightedImage = imClick //asignacion de imagen cuando le de click a algun elemento de la tabla.
        
        return celda!

    }
}

