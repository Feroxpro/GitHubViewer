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
    let viewModel = ConfirmationViewModel()
    
    override func loadView() {
        self.view = self.signUpVS
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpVS.delegate(delegate: self)
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
    }
}


extension SignUpViewController: SignUpProtocol  {
    
    func datePickerValueChanged() {
        
    }
    
    
    func actionSendButton() {
        viewModel.fieldConfirmations()
    }
    
    func actionPickerProfilePhoto() {
        self.imagePicker()
    }
}
      


