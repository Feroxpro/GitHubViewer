//
//  ViewController.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 03/02/23.
//

import UIKit

class SignInViewController: UIViewController {

    let homeVS = SignInViewScreen()
    
    override func loadView() {
        self.view = self.homeVS
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeVS.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }


}

extension SignInViewController: LoginScreenProtocol {
    func actionForgotButton() {
        let forgotViewController = ForgotViewController()
        self.navigationController?.pushViewController(forgotViewController, animated: true)
    }
    
    func actionSignUpButton() {
        let signUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
}
        

