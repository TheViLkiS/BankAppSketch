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
    let labelThree = UILabel(frame: CGRect(x: 0, y: 0, width: 295, height: 36))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldFullName.delegate = self
        self.textFieldEmail.delegate = self
        self.textFieldPassword.delegate = self
        
        
        // Скрытие клавиатуры
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(tapGesture)
        
        
        
        
        // Label One
        let labelWellcome = UILabel(frame: CGRect(x: 0, y: 0, width: 156, height: 42))
        labelWellcome.textColor = UIColor.dark
        labelWellcome.text = "Welcome!"
        labelWellcome.font = UIFont(name: "Helvetica", size: 35)
        labelWellcome.textAlignment = .center
        
        view.addSubview(labelWellcome)
        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true
        labelWellcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelWellcome.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Label Two
        
        let labelTwo = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelTwo.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelTwo.text = """
        Please provide following
        details for your new account
        """
        labelTwo.font = UIFont(name: "Helvetica", size: 15)
        labelTwo.numberOfLines = 2
        labelTwo.textAlignment = .center
        
        view.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        labelTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        
        
        // TextField1
        
        
        textFieldFullName.placeholder = "Full Name"
        textFieldFullName.backgroundColor = .whiteBank
        textFieldFullName.layer.cornerRadius = 10
        textFieldFullName.indent(size: 20)
        textFieldFullName.textColor = .darkTwo
        
        
        view.addSubview(textFieldFullName)
        textFieldFullName.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 137).isActive = true
        textFieldFullName.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        textFieldFullName.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        textFieldFullName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldFullName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldFullName.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // TextField2
        
        
        textFieldEmail.placeholder = "Email Address"
        textFieldEmail.backgroundColor = .whiteBank
        textFieldEmail.layer.cornerRadius = 10
        textFieldEmail.indent(size: 20)
        textFieldEmail.textColor = .darkTwo
        
        
        view.addSubview(textFieldEmail)
        textFieldEmail.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 192).isActive = true
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
        textFieldPassword.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 247).isActive = true
        textFieldPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        textFieldPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        textFieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
        
        
        
        labelThree.textColor = .dark.withAlphaComponent(0.5)
        labelThree.text = """
        By creating your account you have to agree with our Teams and Conditions.
        """
        labelThree.font = UIFont(name: "Helvetica", size: 13)
        labelThree.numberOfLines = 2
        labelThree.textAlignment = .left
        
        view.addSubview(labelThree)
        labelThree.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 326).isActive = true
        labelThree.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 77).isActive = true
        labelThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -42).isActive = true
//        labelThree.heightAnchor.constraint(equalToConstant: 36).isActive = true
//        labelThree.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        
        
        // buttonSignUpAccount
        buttonSignUpAccount.setTitle("Sign up my Account", for: .normal)
        buttonSignUpAccount.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        buttonSignUpAccount.titleLabel?.textColor = .white
        buttonSignUpAccount.backgroundColor = .darkSkyBlue
        buttonSignUpAccount.layer.cornerRadius = 10
        buttonSignUpAccount.addTarget(self, action: #selector(accountCreated), for: .touchUpInside)
        view.addSubview(buttonSignUpAccount)

        buttonSignUpAccount.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 410).isActive = true
        buttonSignUpAccount.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        buttonSignUpAccount.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        buttonSignUpAccount.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonSignUpAccount.translatesAutoresizingMaskIntoConstraints = false

        
        // buttonSignUpPhone
        buttonSignUpPhone.setTitle("Sign up with Phone Number", for: .normal)
        buttonSignUpPhone.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        buttonSignUpPhone.titleLabel?.textColor = .white
        buttonSignUpPhone.backgroundColor = .dark
        buttonSignUpPhone.layer.cornerRadius = 10
        view.addSubview(buttonSignUpPhone)

        buttonSignUpPhone.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 477).isActive = true
        buttonSignUpPhone.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        buttonSignUpPhone.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        buttonSignUpPhone.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonSignUpPhone.translatesAutoresizingMaskIntoConstraints = false
        buttonSignUpPhone.addTarget(self, action: #selector(signUpPhone), for: .touchUpInside)
        
        //buttonSignIn


        buttonSignIn.setTitle("Already have an account? - Sign In", for: .normal)
        buttonSignIn.setTitleColor(.dark.withAlphaComponent(0.5), for: .normal)
        buttonSignIn.titleLabel?.font = UIFont(name: "Helvetica", size: 15)

        
        
        view.addSubview(buttonSignIn)
        buttonSignIn.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 557).isActive = true
        buttonSignIn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70).isActive = true
        buttonSignIn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70).isActive = true
        buttonSignIn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        buttonSignIn.translatesAutoresizingMaskIntoConstraints = false
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



