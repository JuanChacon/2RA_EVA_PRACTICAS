//
//  VerdeViewController.swift
//  2DA_EVA_10_SEGUE
//
//  Created by  on 23/03/17.
//
//

import UIKit

class VerdeViewController: UIViewController {

    
    @IBOutlet weak var LblDatosV: UILabel!
    var sTxt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        LblDatosV.text = sTxt

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
