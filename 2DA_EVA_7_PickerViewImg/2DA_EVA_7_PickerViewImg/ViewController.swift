//
//  ViewController.swift
//  2DA_EVA_7_PickerViewImg
//
//  Created by  on 16/03/17.
//
// <Juan Chacon Holguin>
// <13550355>
// <Plataforma I>
//< PracticaPickerViewIMG>
//  Created by  on 16/03/17.

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var allIMG: [UIImage]!
    
    let ACom = ["facebook","google","instagram","pinterest","twitter"]
    override func viewDidLoad() {
        super.viewDidLoad()
        allIMG = [UIImage(named: "facebook")!,//se le pone signo de admiracion porque puede que no cargue la imagen
        UIImage(named: "google")!,
        UIImage(named: "instagram")!,
        UIImage(named: "pinterest")!,
        UIImage(named: "twitter-xl")!]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //funcion para cargar las imagenes que se encuntran en el arreglo de imagenes allIMG
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let img = allIMG[row]
        let imgView = UIImageView(image: img)
        return imgView
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa: String
        if component == 0{
            sMensa = "Vine a comer en " + ACom[row]//fila que se debe refrescar (mostrar el text)misRestImg[indexPath.row]
        }else{
            sMensa = ACom[row]//fila que se debe refrescar (mostrar el text)
        }
        let actShow = UIAlertController(title: "picker view",message: sMensa,preferredStyle: .Alert)
        let acBotton = UIAlertAction(title: "ok", style: .Default, handler: nil)
        actShow.addAction(acBotton)
        presentViewController(actShow, animated: true, completion: nil)
    
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allIMG.count
    }
    //Regresa una vista, las genera, lee el arreglo y los pone en la vista
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
   
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
}
