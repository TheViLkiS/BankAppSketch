//
//  WelcomeBackViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 06.04.2023.
//

import UIKit

class WelcomeBackViewController: UIViewController, UITextFieldDelegate {

    var textFieldEmail = UITextField()
    var textFieldPassword = UITextField()
    let buttonEye = UIButton()
    var buttonSignInAccount = UIButton()
    var buttonSignUp = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Скрытие клавиатуры
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(tapGesture)
        

        self.textFieldEmail.delegate = self
        self.textFieldPassword.delegate = self
        
        // Label One
        let labelWellcome = UILabel()
        createLabel(label: labelWellcome, text: "Welcome Back!", size: 35, color: .dark)

        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true
        
        //Label Two
        
        let labelTwo = UILabel()
        createLabel(label: labelTwo, text: "Sign in to continue", size: 15)
        
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true

        //Label Three
        
        let labelThree = UILabel()
        createLabel(label: labelThree, text: "Forgot Password?", size: 12, center: false)

        labelThree.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 264).isActive = true
        labelThree.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 210).isActive = true
        labelThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -41).isActive = true

        // TextField2
        

        createTextField(textField: textFieldEmail, name: "Email")
        constraintTo(obj: textFieldEmail, to: labelWellcome, const: 137)

        textFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        textFieldEmail.keyboardType = .emailAddress
        
        //TextField3
        

        textFieldPassword.eye(button: buttonEye)
        textFieldPassword.isSecureTextEntry = true
        
        buttonEye.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        
        
        
       createTextField(textField: textFieldPassword, name: "Password")
        constraintTo(obj: textFieldPassword, to: labelWellcome, const: 192)

        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        
        // ButtonSignInAccount
        
        createButton(button: buttonSignInAccount, text: "Sign in my Account", constraintTo: labelWellcome, const: 330)
        buttonSignInAccount.addTarget(self, action: #selector(homePage), for: .touchUpInside)

        
        //ButtonSignUp

        createButton(button: buttonSignUp, text: "Don’t have an account? - Sign Up", constraintTo: labelWellcome, const: 390, color: .clear, textColor: .dark.withAlphaComponent(0.5), size: 15)
        buttonSignUp.addTarget(self, action: #selector(signUp), for: .touchUpInside)

    }
    
    @objc func signUp(){
        let vc = WelcomeViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc func tap() {
        
        textFieldEmail.resignFirstResponder()
        textFieldPassword.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.textFieldEmail:
            self.textFieldPassword.becomeFirstResponder()
        case self.textFieldPassword:
            self.textFieldPassword.resignFirstResponder()
        default:
            self.textFieldPassword.resignFirstResponder()
        }
    }
    
    @objc func homePage(){
        let vc = HomePageViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    //скрыть/показать пароль
    
    @objc func togglePasswordView(_ sender: Any) {
            textFieldPassword.isSecureTextEntry.toggle()
            buttonEye.isSelected.toggle()
        }
    

}
