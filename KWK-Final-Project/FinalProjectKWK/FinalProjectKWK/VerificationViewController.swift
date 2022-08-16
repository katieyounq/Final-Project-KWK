//
//  VerificationViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class VerificationViewController: UIViewController {
    var timer: Timer?
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        spinner.startAnimating()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + (Double.random(in: 2...10))) {
//            spinner.stopAnimating()
//        }
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

}
