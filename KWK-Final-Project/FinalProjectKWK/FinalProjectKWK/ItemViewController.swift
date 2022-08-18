//
//  ItemViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/17/22.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVal()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   
    func getVal() {
        var points = Int(textField.text!)
        if points > 100 {
            textField.text = "0"
        }
        
    }
    
}
