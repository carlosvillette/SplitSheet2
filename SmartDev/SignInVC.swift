//
//  SignInVC.swift
//  SmartDev
//
//  Created by Guy Carlos Villette on 2/8/20.
//  Copyright © 2020 Guy Carlos Villette. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var emailTF: UITextField!
    
    
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func onSignInTapped(_ sender: Any) {
        
        guard let email = emailTF.text,
            email != "",
            let password = passwordTF.text,
            password != ""
            else {
                AlertController.showAlert(inViewController: self, title: "Missing Info", message: "Please fill out all required fields")
                return
        }
        
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            guard error == nil else {
                AlertController.showAlert(inViewController: self, title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else { return }
            print(user.email ?? "MISSING EMAIL")
            print(user.displayName ?? "MISSING DISPLAY NAME")
            print(user.uid)
            
            //self.performSegue(withIdentifier: "signInSegue", sender: nil)
            self.performSegue(withIdentifier: "signInSplitScreen", sender: nil)

            
            
        })
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = UIImage(named: "ScreenSplitLogo.jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
