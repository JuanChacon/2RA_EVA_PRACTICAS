//
//  ImgViewController.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by  on 24/03/17.
//
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var TxtUbica: UILabel!
    @IBOutlet weak var TxtDescrip: UILabel!
    @IBOutlet weak var viewImg: UIImageView!
    @IBOutlet weak var TxtName: UILabel!
    var sNomImg = ""
    var TName = ""
    var TDes = ""
    var TUbi = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImg.image = UIImage(named: sNomImg)! // se lo pone el signo ! por que no se asegura de que pueda aparecer la imagen
        TxtName.text = TName
         TxtDescrip.text = TDes
         TxtUbica.text = TUbi

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
