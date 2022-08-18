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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func confirmTapped(_ sender: UIButton) {
        
        getVal()
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
        if Int((textField.text)!) != nil {
              if Int((textField.text)!)! > 100 {
                let alert = UIAlertController(title: "Warning!", message: "Cannot go over 100 lbs", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Try again", style: .default, handler: nil))
                present(alert, animated: true, completion: {
                 return
                })
              }

    }

}
}
