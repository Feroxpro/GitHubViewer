//
//  HomeViewScreen.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 03/02/23.
//

import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    func actionSignUpButton()
    func actionForgotButton()
}

class SignInViewScreen: UIView {
    
    weak var delegate:LoginScreenProtocol?
    func delegate(delegate:LoginScreenProtocol?){
        self.delegate = delegate
    }

    lazy var BackGroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "bg4")
        return img
    }()
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "git")
        return img
    }()
    lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.text = "Viewer"
        label.font = UIFont(name: "Zapf Dingbats", size: 30)
        label.textColor = .white
        return label
    }()
    
    lazy var BackGroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        return view
    }()
    
    lazy var signInView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.35)
//        view.layer.cornerRadius = 6
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 8, height: 8)
        view.layer.shadowOpacity = 5
        view.layer.shadowRadius = 5
        return view
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Usuário"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Senha"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        textField.isSecureTextEntry = true
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var forgotPassword: UIButton = {
        let button = UIButton()
        button.setTitle("Esqueceu sua senha?", for: .normal)
        button.addTarget(self, action: #selector(self.tappedForgotbtn), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Nao tem uma conta? Cadastre-se.", for: .normal)
        button.addTarget(self, action: #selector(self.tappedSignUpbtn), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc public func tappedSignUpbtn() {
        self.delegate?.actionSignUpButton()
    }
    
    @objc public func tappedForgotbtn() {
        self.delegate?.actionForgotButton()
    }
    
    func configSubViews() {
        addSubview(BackGroundImage)
        addSubview(BackGroundView)
        addSubview(signInView)
        addSubview(logoImage)
        addSubview(logoLabel)
        signInView.addSubview(userTextField)
        signInView.addSubview(passwordTextField)
        signInView.addSubview(forgotPassword)
        signInView.addSubview(loginButton)
        signInView.addSubview(signUpButton)
    }
    
    func setupConstraints() {
        BackGroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).inset(20)
            make.trailing.equalTo(logoImage.snp.trailing)
        }
        BackGroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        signInView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(450)
            make.width.equalTo(370)
        }
        userTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInView.snp.top).offset(70)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userTextField.snp.bottom).offset(30)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        forgotPassword.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(5)
            make.trailing.equalTo(passwordTextField.snp.trailing)
        }
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(forgotPassword.snp.bottom).offset(60)
            make.width.equalTo(120)
        }
        signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginButton.snp.bottom).offset(60)
        }
    }
}
