//
//  View1.swift
//  2DA_EVA_8_PassPicker
//
//  Created by  on 31/03/17.
//
//

import UIKit

class View1: UIViewController {

    @IBOutlet var imgVie: UIImageView!
    @IBOutlet weak var txtInfo: UILabel!
    var sNomImg = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        txtInfo.text = "HOLA MUNDO"
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
