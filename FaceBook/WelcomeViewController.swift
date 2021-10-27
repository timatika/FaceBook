//
//  WelcomeViewController.swift
//  FaceBook
//
//  Created by timatika on 27.10.2021.
//

import UIKit

class WelcomeViewController: ViewController {
    
    @IBOutlet var bonjoirScreen: UILabel!
    
    
    var helloScreen: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bonjoirScreen.text = "Welcome, \(String(describing: helloScreen!))"

    
    }
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        nameTF?.text = ""
        passwordTF?.text = ""
    }

}
