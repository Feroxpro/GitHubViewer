//
//  ForgotViewController.swift
//  GitHubViewer
//
//  Created by Felipe Domingos on 05/02/23.
//

import UIKit

class ForgotViewController: UIViewController {
    
    
    
    let forgotVS = ForgotViewScreen()
    let restManager = RestManager()
    
    override func loadView() {
        self.view = self.forgotVS
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.forgotVS.delegate(delegate: self)
    }
}

extension ForgotViewController: ForgotProtocol {
    func actionForgotButton() {

    }
}
