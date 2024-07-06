//
//  LogInViewController.swift
//  Dr-Appiontment
//
//  Created by MacUser on 2024-06-21.
//

import UIKit
import Firebase
class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInClick(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().signIn(withEmail: email, password: password) { fibebaseResult, error in
            if let e = error{
                print("error")
            }
            else{
                //Go to our home screen
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
