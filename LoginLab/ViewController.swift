//
//  ViewController.swift
//  LoginLab
//
//  Created by Joy Marie on 2/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = usernameTextField.text
        guard let sender = sender as? UIButton else {
            return
            
        }

        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
            
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"

        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }

    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsername)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPassword)
    }
}

