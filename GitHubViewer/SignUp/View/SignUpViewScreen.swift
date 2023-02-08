//
//  SignUpViewScreen.swift
//  MoviesDB
//
//  Created by Felipe Domingos on 05/02/23.
//

import UIKit



protocol SignUpProtocol: AnyObject {
    func actionSendButton()
    func actionPickerProfilePhoto()
    func datePickerValueChanged()
}

class SignUpViewScreen: UIView {
    
    weak var delegate:SignUpProtocol?
    func delegate(delegate:SignUpProtocol?){
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
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 8, height: 8)
        view.layer.shadowOpacity = 5
        view.layer.shadowRadius = 5
        return view
    }()
    
    lazy var completeNameTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Nome Completo"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var CpfTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "CPF"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
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
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "E-Mail"
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
        textField.placeholder = "Insira uma senha"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        textField.isSecureTextEntry = true
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var ConfirmpasswordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 280, height: 30))
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .natural
        textField.placeholder = "Confirme sua senha"
        let placeholderColor = UIColor.white.withAlphaComponent(0.7)
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        textField.isSecureTextEntry = true
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textField.layer.addSublayer(bottomLine)
        return textField
    }()
    
    lazy var birthday: UIDatePicker = {
        let label = UILabel()
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
        datePicker.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        datePicker.backgroundColor = UIColor.yellow
        return datePicker
    }()
    
    lazy var ProfileImagePicker: UIButton = {
        let takePictureButton = UIButton()
        takePictureButton.setTitle("insira sua foto de perfil", for: .normal)
        takePictureButton.setTitleColor(.white, for: .normal)
        takePictureButton.addTarget(self, action: #selector(takePicture), for: .touchUpInside)
        return takePictureButton
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tappedSendbtn), for: .touchUpInside)
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
    
    @objc public func tappedSendbtn() {
        self.delegate?.actionSendButton()
    }
    
    @objc func takePicture() {
        self.delegate?.actionPickerProfilePhoto()
    }
    
    @objc public func datePickerValueChanged() {
        self.delegate?.actionSendButton()
    }
    
    func configSubViews() {
        addSubview(BackGroundImage)
        addSubview(BackGroundView)
        addSubview(signInView)
        addSubview(logoImage)
        addSubview(logoLabel)
        signInView.addSubview(completeNameTextField)
        signInView.addSubview(CpfTextField)
        signInView.addSubview(userTextField)
        signInView.addSubview(emailTextField)
        signInView.addSubview(passwordTextField)
        signInView.addSubview(ConfirmpasswordTextField)
        signInView.addSubview(birthday)
        signInView.addSubview(ProfileImagePicker)
        signInView.addSubview(sendButton)
        
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
            make.top.equalTo(logoLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.height.equalTo(550)
            make.width.equalTo(370)
        }
        completeNameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInView.snp.top).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        CpfTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(completeNameTextField.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        userTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(CpfTextField.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userTextField.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailTextField.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        ConfirmpasswordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        birthday.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(ConfirmpasswordTextField.snp.bottom).offset(25)
        }
        ProfileImagePicker.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(birthday.snp.bottom).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        sendButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(ProfileImagePicker.snp.bottom).offset(25)
            make.width.equalTo(120)
        }
    }
}

