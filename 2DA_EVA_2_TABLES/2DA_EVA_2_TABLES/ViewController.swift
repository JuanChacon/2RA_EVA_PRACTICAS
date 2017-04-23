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
//<07/03/2017>

import UIKit
//agregar protocolos requeridos para utilizar la tabla view
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //declarar un arreglo con 6 datos de tipo cadena
    let misDatos=["1","2","3","a","b","c","1","2","3","a","b","c","1","2","3","a","b","c"]

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
        let controlador = UIAlertController(title:"Tus datos",message: misDatos[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "ok",style: .Default,handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    //devuelve la celda prototipo.
    //se le daran valores a la variable celda, los cuales son los valores del arreglo
    //indexPath es el numero de columna en cual se encuentra el dato del arreglo previamente declarado.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var celda = tableView.dequeueReusableCellWithIdentifier("miCelda")
        if celda == nil {
            celda = UITableViewCell(style: .Default, reuseIdentifier: "miCelda")
        }
        celda?.textLabel?.text=misDatos[indexPath.row]
        let imFija = UIImage(named: "star-b")//imagen fija de cada elemento de la tabla
        let imClick = UIImage(named: "star-p")//imagen que se pondra cuando se le de click en algun elemento
        celda?.imageView?.image = imFija//asignacion de imagen fija a cada celda.
        celda?.imageView?.highlightedImage = imClick //asignacion de imagen cuando le de click a algun elemento de la tabla.
        
        return celda!
    }
}

