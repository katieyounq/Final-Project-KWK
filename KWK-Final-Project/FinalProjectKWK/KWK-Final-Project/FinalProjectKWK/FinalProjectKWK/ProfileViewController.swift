//
//  ProfileViewController.swift
//  FinalProjectKWK
//
//  Created by Scholar on 8/18/22.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
   
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field3: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = ProfilePage.name
        label2.text = ProfilePage.email
        label3.text = ProfilePage.bio
        label4.text = "Total points: " + String(ProfilePage.points)
        
        if (ProfilePage.isHidden) {
            field1.isHidden = true
            field2.isHidden = true
            field3.isHidden = true

        }
        
//        label1.isHidden = true
//        label2.isHidden = true
//        label3.isHidden = true
        
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: UIButton) {
        ProfilePage.name = (field1.text)!
        ProfilePage.email = (field2.text)!
        ProfilePage.bio = (field3.text)!
        
        
        label1.text = ProfilePage.name
        label2.text = ProfilePage.email
        label3.text = ProfilePage.bio
        
        field1.isHidden = true
        field2.isHidden = true
        field3.isHidden = true
        
        
        
        ProfilePage.isHidden = true
        
        
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
