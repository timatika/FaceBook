//
//  ViewController.swift
//  FaceBook
//
//  Created by timatika on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF?.isSecureTextEntry = true
    }
    
    var userOne = Users()
    
    func checkUser(){

        let checkName = String(nameTF.text ?? "")
        let checkPassword = String(passwordTF.text ?? "")
        
        guard checkName == userOne.name && checkPassword == userOne.password  else {showErrorAlert(); return}
    }

    @IBAction func logInPresset() {
        
        checkUser()
    }
    
    @IBAction func alertNamePresset() {
        
        let alertName = UIAlertController(title: "Oops!", message: "Your name is User", preferredStyle: .alert)
        alertName.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alertName, animated: true, completion: nil)
    }
    
    @IBAction func alertPasswordPresset() {
        
        let alertPassword = UIAlertController(title: "Oops!", message: "Your password is Password", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alertPassword, animated: true, completion: nil)
    }
    
    func showErrorAlert() {
        let errorAlert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
        
        let errorAlertOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        errorAlert.addAction(errorAlertOK)
        
        self.present(errorAlert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.helloScreen = nameTF.text
    }
}

