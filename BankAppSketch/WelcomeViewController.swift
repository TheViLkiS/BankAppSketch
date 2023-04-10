//
//  WelcomeViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 05.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate {
    
    
    var textFieldFullName = UITextField()
    var textFieldEmail = UITextField()
    var textFieldPassword = UITextField()
    let buttonEye = UIButton()
    var checkmarkButton = UIButton()
    var buttonSignUpAccount = UIButton()
    var buttonSignUpPhone = UIButton()
    var buttonSignIn = UIButton()
    let labelThree = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldFullName.delegate = self
        self.textFieldEmail.delegate = self
        self.textFieldPassword.delegate = self
        
        
        // Скрытие клавиатуры
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(tapGesture)

        
        // Label One
        let labelWellcome = UILabel()
        createLabel(label: labelWellcome, text: "Welcome!", size: 35, color: .dark)
        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true

        //Label Two
        
        let labelTwo = UILabel()
        
        createLabel(label: labelTwo, text: """
        Please provide following
        details for your new account
        """, size: 15, lines: 2)
        
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        
        
        // TextField1

        
        createTextField(textField: textFieldFullName, name: "Full Name")
        constraintTo(obj: textFieldFullName, to: labelWellcome, const: 137)
        textFieldFullName.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // TextField2
        
        
        createTextField(textField: textFieldEmail, name: "Email Address")
        constraintTo(obj: textFieldEmail, to: labelWellcome, const: 192)
        textFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        textFieldEmail.keyboardType = .emailAddress
        
        //TextField3
        
        textFieldPassword.eye(button: buttonEye)
        textFieldPassword.isSecureTextEntry = true
        buttonEye.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        createTextField(textField: textFieldPassword, name: "Password")
        constraintTo(obj: textFieldPassword, to: labelWellcome, const: 247)
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        // checkmarkButton
        
        checkmarkButton.setImage(UIImage(systemName: "square", withConfiguration: UIImage.SymbolConfiguration(pointSize: 60)), for: .normal)
        checkmarkButton.setImage(UIImage(systemName: "checkmark.square",withConfiguration: UIImage.SymbolConfiguration(pointSize: 60)), for: .selected)
        checkmarkButton.addTarget(self, action: #selector(checkMark), for: .touchUpInside)
        checkmarkButton.tintColor = .systemGray
        
        
        view.addSubview(checkmarkButton)
        checkmarkButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 42).isActive = true
        checkmarkButton.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 28).isActive = true
        checkmarkButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        checkmarkButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        checkmarkButton.translatesAutoresizingMaskIntoConstraints = false
       
        //Label Three

        createLabel(label: labelThree, text: """
        By creating your account you have to agree with our Teams and Conditions.
        """, size: 13, lines: 2, aligment: .left, center: false)

        labelThree.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 326).isActive = true
        labelThree.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 77).isActive = true
        labelThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -42).isActive = true
//        labelThree.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = false

        
        // buttonSignUpAccount
        
        createButton(button: buttonSignUpAccount, text: "Sign up my Account", constraintTo: labelWellcome, const: 410)
//        buttonSignUpAccount.setTitle("Sign up my Account", for: .normal)
//        buttonSignUpAccount.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
//        buttonSignUpAccount.titleLabel?.textColor = .white
//        buttonSignUpAccount.backgroundColor = .darkSkyBlue
//        buttonSignUpAccount.layer.cornerRadius = 10
        buttonSignUpAccount.addTarget(self, action: #selector(accountCreated), for: .touchUpInside)
//        view.addSubview(buttonSignUpAccount)
//
//        buttonSignUpAccount.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 410).isActive = true
//        buttonSignUpAccount.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
//        buttonSignUpAccount.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
//        buttonSignUpAccount.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        buttonSignUpAccount.translatesAutoresizingMaskIntoConstraints = false

        
        // buttonSignUpPhone
        
        createButton(button: buttonSignUpPhone, text: "Sign up with Phone Number", constraintTo: labelWellcome, const: 477, color: .dark)
//        buttonSignUpPhone.setTitle("Sign up with Phone Number", for: .normal)
//        buttonSignUpPhone.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
//        buttonSignUpPhone.titleLabel?.textColor = .white
//        buttonSignUpPhone.backgroundColor = .dark
//        buttonSignUpPhone.layer.cornerRadius = 10
//        view.addSubview(buttonSignUpPhone)
//
//        buttonSignUpPhone.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 477).isActive = true
//        buttonSignUpPhone.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
//        buttonSignUpPhone.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
//        buttonSignUpPhone.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        buttonSignUpPhone.translatesAutoresizingMaskIntoConstraints = false
        buttonSignUpPhone.addTarget(self, action: #selector(signUpPhone), for: .touchUpInside)
//
        //buttonSignIn


        createButton(button: buttonSignIn, text: "Already have an account? - Sign In", constraintTo: labelWellcome, const: 540, color: .clear, textColor: .dark.withAlphaComponent(0.5), size: 15)
        
//        buttonSignIn.setTitle("Already have an account? - Sign In", for: .normal)
//        buttonSignIn.setTitleColor(.dark.withAlphaComponent(0.5), for: .normal)
//        buttonSignIn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
//
//
//
//        view.addSubview(buttonSignIn)
//        buttonSignIn.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 557).isActive = true
//        buttonSignIn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70).isActive = true
//        buttonSignIn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70).isActive = true
//        buttonSignIn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        buttonSignIn.translatesAutoresizingMaskIntoConstraints = false
        buttonSignIn.addTarget(self, action: #selector(signIn), for: .touchUpInside)
    }
    

    @objc func signIn(){
        let vc = WelcomeBackViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @objc func signUpPhone(){
        if checkmarkButton.isSelected == true {
            let vc = MobileNumberViewController()
            vc.view.backgroundColor = .white
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        } else {
            labelThree.textColor = .systemPink
        }
    }
    

    @objc func checkMark() {
        checkmarkButton.isSelected.toggle()
        labelThree.textColor = .dark.withAlphaComponent(0.5)
    }
    
    
    
    @objc func tap() {
        textFieldFullName.resignFirstResponder()
        textFieldEmail.resignFirstResponder()
        textFieldPassword.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.textFieldFullName:
            self.textFieldEmail.becomeFirstResponder()
        case self.textFieldEmail:
            self.textFieldPassword.becomeFirstResponder()
        case self.textFieldPassword:
            self.textFieldPassword.resignFirstResponder()
        default:
            self.textFieldPassword.resignFirstResponder()
        }
    }
    
    //скрыть/показать пароль
    
    @objc func togglePasswordView(_ sender: Any) {
            textFieldPassword.isSecureTextEntry.toggle()
            buttonEye.isSelected.toggle()
        }
    
    @objc func accountCreated(){
        
        if checkmarkButton.isSelected == true {
            
            
            let vc = AccountCreatedViewController()
            vc.view.backgroundColor = .white
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        } else {
            labelThree.textColor = .systemPink

        }
    }
    
}



