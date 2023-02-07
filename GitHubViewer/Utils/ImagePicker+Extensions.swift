//
//  felipe.swift
//  GitHubViewer
//
//  Created by Felipe Domingos on 05/02/23.
//

import Foundation
import UIKit

extension SignUpViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePicker() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        let actionSheet = UIAlertController(title: "Escolha uma imagem", message: "De onde você gostaria de escolher sua imagem?", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Câmera", style: .default, handler: { (action:UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            } else {
                print("Câmera não disponível")
            }
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Galeria", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
      picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
      picker.dismiss(animated: true, completion: nil)
    }
  }
