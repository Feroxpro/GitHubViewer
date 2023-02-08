//
//  ConfirmationsViewModel.swift
//  GitHubViewer
//
//  Created by Felipe Domingos on 07/02/23.
//

import Foundation


class ConfirmationViewModel {
    
    let signUpVS = SignUpViewScreen()
    
    
    func fieldConfirmations() {
        if signUpVS.completeNameTextField.text?.count ?? 0 <= 8 || signUpVS.CpfTextField.text?.count ?? 0 < 11 || signUpVS.userTextField.text?.count ?? 0 < 4 || signUpVS.emailTextField.text?.count ?? 0 < 5 || signUpVS.passwordTextField.text?.count ?? 0 < 7 || signUpVS.ConfirmpasswordTextField.text?.count ?? 0 < 7 && signUpVS.passwordTextField.text ?? "" == signUpVS.ConfirmpasswordTextField.text ?? "" {
            signUpVS.sendButton.isExclusiveTouch = false
            signUpVS.sendButton.backgroundColor = .gray
        }
        
        
    }
    
    
    
    
}
