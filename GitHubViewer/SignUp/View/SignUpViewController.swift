//
//  SignUpViewController.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 05/02/23.
//

import UIKit

class SignUpViewController: UIViewController {

    
    let restManager = RestManager()
    let signUpVS = SignUpViewScreen()
    
    override func loadView() {
        self.view = self.signUpVS
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpVS.delegate(delegate: self)
    }
}


extension SignUpViewController: SignUpProtocol  {
    func actionSendButton() {
        
    }
    
    func actionPickerProfilePhoto() {
        self.imagePicker()
    }
}
      


