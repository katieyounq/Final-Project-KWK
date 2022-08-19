//
//  VerificationViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class VerificationViewController: UIViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.startAnimating()
        
        let time = Double.random(in: 2...3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            self.spinner.stopAnimating()

        }
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: time, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    
    @objc func timeToMoveOn() {
        self.performSegue(withIdentifier: "goToFinalUI", sender: self)
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
