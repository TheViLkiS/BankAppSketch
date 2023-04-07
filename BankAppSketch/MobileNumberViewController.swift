//
//  MobileNumberViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 06.04.2023.
//

import UIKit

class MobileNumberViewController: UIViewController, UITextFieldDelegate {

    let phoneField = UITextField()
    var buttonSendCode = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Скрытие клавиатуры
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(tapGesture)
        self.phoneField.delegate = self
        

        // Label One
        let labelWellcome = UILabel(frame: CGRect(x: 0, y: 0, width: 156, height: 42))
        labelWellcome.textColor = UIColor.dark
        labelWellcome.text = "Mobile Number"
        labelWellcome.font = UIFont(name: "Helvetica", size: 35)
        labelWellcome.textAlignment = .center
        
        view.addSubview(labelWellcome)
        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true
        labelWellcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelWellcome.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Label Two
        
        let labelTwo = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelTwo.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelTwo.text = "Please enter your valid phone number. We will send you 4-digit code to verify account."
        labelTwo.numberOfLines = 2
        labelTwo.font = UIFont(name: "Helvetica", size: 15)
        labelTwo.textAlignment = .center
        
        view.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 42).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -42).isActive = true
        labelTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        
        
            //PhoneField
        
        phoneField.placeholder = "+7 999 000 00 00"
        phoneField.keyboardType = .phonePad
        phoneField.backgroundColor = .white.withAlphaComponent(0.8)
        phoneField.layer.cornerRadius = 15
        phoneField.layer.shadowColor = UIColor.black.cgColor
        phoneField.layer.shadowOffset = CGSize(width: 1.0, height: 8.0)
        phoneField.layer.shadowRadius = 7.0
        phoneField.layer.shadowOpacity = 0.15
        phoneField.layer.masksToBounds = false
        
        phoneField.indent(size: 20)
        phoneField.textColor = .darkTwo
        
        
        view.addSubview(phoneField)
        phoneField.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 138).isActive = true
        phoneField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        phoneField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        phoneField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        phoneField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        phoneField.translatesAutoresizingMaskIntoConstraints = false
        
        
        // buttonSendCode
        buttonSendCode.setTitle("Send Code", for: .normal)
        buttonSendCode.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        buttonSendCode.titleLabel?.textColor = .white
        buttonSendCode.backgroundColor = .darkSkyBlue
        buttonSendCode.layer.cornerRadius = 10
        view.addSubview(buttonSendCode)

        buttonSendCode.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 295).isActive = true
        buttonSendCode.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        buttonSendCode.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        buttonSendCode.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonSendCode.translatesAutoresizingMaskIntoConstraints = false
        buttonSendCode.addTarget(self, action: #selector(sendCode), for: .touchUpInside)
        
        
        phoneField.becomeFirstResponder()
    }

    @objc func sendCode(){
        let vc = VerifAccViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.phoneField:
            self.phoneField.resignFirstResponder()
        default:
            self.phoneField.resignFirstResponder()
        }
    }
    @objc func tap() {
        
        phoneField.resignFirstResponder()
    }

}
