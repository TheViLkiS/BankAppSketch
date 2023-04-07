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
        let labelWellcome = UILabel(frame: CGRect(x: 0, y: 0, width: 156, height: 42))
        labelWellcome.textColor = UIColor.dark
        labelWellcome.text = "Welcome Back!"
        labelWellcome.font = UIFont(name: "Helvetica", size: 35)
        labelWellcome.textAlignment = .center
        
        view.addSubview(labelWellcome)
        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true
        labelWellcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelWellcome.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Label Two
        
        let labelTwo = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelTwo.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelTwo.text = "Sign in to continue"
        labelTwo.font = UIFont(name: "Helvetica", size: 15)
        labelTwo.textAlignment = .center
        
        view.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        labelTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        
        //Label Three
        
        let labelThree = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelThree.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelThree.text = "Forgot Password?"
        labelThree.font = UIFont(name: "Helvetica", size: 12)
        labelThree.textAlignment = .right
        
        view.addSubview(labelThree)
        labelThree.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 264).isActive = true
        labelThree.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 210).isActive = true
        labelThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -41).isActive = true
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        
        // TextField2
        
        
        textFieldEmail.placeholder = "Email"
        textFieldEmail.backgroundColor = .whiteBank
        textFieldEmail.layer.cornerRadius = 10
        textFieldEmail.indent(size: 20)
        textFieldEmail.textColor = .darkTwo
        
        
        view.addSubview(textFieldEmail)
        textFieldEmail.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 137).isActive = true
        textFieldEmail.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        textFieldEmail.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        textFieldEmail.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        textFieldEmail.keyboardType = .emailAddress
        
        //TextField3
        
        
        textFieldPassword.placeholder = "Password"
        textFieldPassword.backgroundColor = .whiteBank
        textFieldPassword.layer.cornerRadius = 10
        textFieldPassword.indent(size: 20)
        textFieldPassword.eye(button: buttonEye)
        textFieldPassword.textColor = .darkTwo
        textFieldPassword.isSecureTextEntry = true
        
        buttonEye.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        
        
        
        view.addSubview(textFieldPassword)
        textFieldPassword.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 192).isActive = true
        textFieldPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        textFieldPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        textFieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        
        // ButtonSignInAccount
        buttonSignInAccount.setTitle("Sign in my Account", for: .normal)
        buttonSignInAccount.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        buttonSignInAccount.titleLabel?.textColor = .white
        buttonSignInAccount.backgroundColor = .darkSkyBlue
        buttonSignInAccount.layer.cornerRadius = 10
        view.addSubview(buttonSignInAccount)

        buttonSignInAccount.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 330).isActive = true
        buttonSignInAccount.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        buttonSignInAccount.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        buttonSignInAccount.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonSignInAccount.translatesAutoresizingMaskIntoConstraints = false

        
        //ButtonSignUp


        buttonSignUp.setTitle("Don’t have an account? - Sign Up", for: .normal)
        buttonSignUp.setTitleColor(.dark.withAlphaComponent(0.5), for: .normal)
        buttonSignUp.titleLabel?.font = UIFont(name: "Helvetica", size: 15)

        
        
        view.addSubview(buttonSignUp)
        buttonSignUp.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 410).isActive = true
        buttonSignUp.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70).isActive = true
        buttonSignUp.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70).isActive = true
        buttonSignUp.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        buttonSignUp.translatesAutoresizingMaskIntoConstraints = false
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
    
    //скрыть/показать пароль
    
    @objc func togglePasswordView(_ sender: Any) {
            textFieldPassword.isSecureTextEntry.toggle()
            buttonEye.isSelected.toggle()
        }
    

}
