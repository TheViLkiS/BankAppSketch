//
//  VerifAccViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 06.04.2023.
//

import UIKit

class VerifAccViewController: UIViewController, UITextFieldDelegate {

    var smsOne = UITextField()
    var smsTwo = UITextField()
    var smsThree = UITextField()
    var smsFour = UITextField()
    let viewOne = UIView()
    let viewTwo = UIView()
    let viewThree = UIView()
    let viewFour = UIView()
    var buttonReSendCode = UIButton()
    var buttonProceed = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        view.addGestureRecognizer(tapGesture)

        self.smsOne.delegate = self
        self.smsTwo.delegate = self
        self.smsThree.delegate = self
        self.smsFour.delegate = self
        
        
        // Label One
        let labelWellcome = UILabel()
        createLabel(label: labelWellcome, text: "Verify Account!", size: 35, color: .dark)

        labelWellcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 113).isActive = true

        
        //Label Two
        
        let labelTwo = UILabel()
        createLabel(label: labelTwo, text: "Enter 4-digit Code code we have sent to at +7 999 000 0000.", size: 15, lines: 2)

        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true

        // textFieldSMS

        createTextFieldSMS(textField: smsOne, constTo: labelWellcome)
        smsOne.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        
        createTextFieldSMS(textField: smsTwo, constTo: labelWellcome)
        smsTwo.leadingAnchor.constraint(equalTo: self.smsOne.trailingAnchor, constant: 22).isActive = true
        
        createTextFieldSMS(textField: smsThree, constTo: labelWellcome)
       createTextFieldSMS(textField: smsFour, constTo: labelWellcome)
        smsFour.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        smsThree.trailingAnchor.constraint(equalTo: self.smsFour.leadingAnchor, constant: -22).isActive = true
        
        //View bottom
        
        
        viewOne.backgroundColor = .black
        view.addSubview(viewOne)
        viewOne.topAnchor.constraint(equalTo: smsOne.bottomAnchor, constant: 10).isActive = true
        viewOne.centerXAnchor.constraint(equalTo: smsOne.centerXAnchor).isActive = true
        viewOne.widthAnchor.constraint(equalTo: smsOne.widthAnchor).isActive = true
        viewOne.heightAnchor.constraint(equalToConstant: 4).isActive = true
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        
        viewTwo.backgroundColor = .black
        view.addSubview(viewTwo)
        viewTwo.topAnchor.constraint(equalTo: smsTwo.bottomAnchor, constant: 10).isActive = true
        viewTwo.centerXAnchor.constraint(equalTo: smsTwo.centerXAnchor).isActive = true
        viewTwo.widthAnchor.constraint(equalTo: smsTwo.widthAnchor).isActive = true
        viewTwo.heightAnchor.constraint(equalToConstant: 4).isActive = true
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        
        viewThree.backgroundColor = .black
        view.addSubview(viewThree)
        viewThree.topAnchor.constraint(equalTo: smsThree.bottomAnchor, constant: 10).isActive = true
        viewThree.centerXAnchor.constraint(equalTo: smsThree.centerXAnchor).isActive = true
        viewThree.widthAnchor.constraint(equalTo: smsThree.widthAnchor).isActive = true
        viewThree.heightAnchor.constraint(equalToConstant: 4).isActive = true
        viewThree.translatesAutoresizingMaskIntoConstraints = false
        
        viewFour.backgroundColor = .black
        view.addSubview(viewFour)
        viewFour.topAnchor.constraint(equalTo: smsFour.bottomAnchor, constant: 10).isActive = true
        viewFour.centerXAnchor.constraint(equalTo: smsFour.centerXAnchor).isActive = true
        viewFour.widthAnchor.constraint(equalTo: smsFour.widthAnchor).isActive = true
        viewFour.heightAnchor.constraint(equalToConstant: 4).isActive = true
        viewFour.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Label Three
        
        let labelThree = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelThree.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelThree.text = "Didn’t not received the code?"
        labelThree.font = UIFont(name: "Helvetica", size: 15)
        labelThree.numberOfLines = 2
        labelThree.textAlignment = .center
        
        view.addSubview(labelThree)
        labelThree.topAnchor.constraint(equalTo: viewTwo.bottomAnchor, constant: 43).isActive = true
        labelThree.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelThree.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        labelThree.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        
        
        // buttonReSendCode
        
        let attribute: [NSAttributedString.Key : Any] = [NSAttributedString.Key.underlineColor: UIColor.darkSkyBlue, NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let tittleAttr = NSAttributedString(string: "Resend Code", attributes: attribute)
        
        
        buttonReSendCode.setAttributedTitle(tittleAttr, for: .normal)
        buttonReSendCode.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
        buttonReSendCode.setTitleColor(.darkSkyBlue, for: .normal)
        buttonReSendCode.backgroundColor = .clear
        buttonReSendCode.layer.cornerRadius = 10
        view.addSubview(buttonReSendCode)

        buttonReSendCode.topAnchor.constraint(equalTo: labelThree.bottomAnchor, constant: 17).isActive = true
        buttonReSendCode.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonReSendCode.widthAnchor.constraint(equalToConstant: 150).isActive = true
        buttonReSendCode.heightAnchor.constraint(equalToConstant: 23).isActive = true
        buttonReSendCode.translatesAutoresizingMaskIntoConstraints = false
        
        
        // buttonProceed
        createButton(button: buttonProceed, text: "Proceed", constraintTo: labelWellcome, const: 480)
        buttonProceed.addTarget(self, action: #selector(proceed), for: .touchUpInside)
        
        
        //textViewBottom Four
        
        addTextViewBottom()

        smsOne.becomeFirstResponder()
    }
    
    
    @objc func proceed(){
        let vc = AccountCreatedViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        viewOne.backgroundColor = .black
        viewTwo.backgroundColor = .black
        viewThree.backgroundColor = .black
        viewFour.backgroundColor = .black

    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case smsOne:
            viewOne.backgroundColor = .darkSkyBlue
            smsOne.text = ""
        case smsTwo:
            viewTwo.backgroundColor = .darkSkyBlue
            smsTwo.text = ""
        case smsThree:
            viewThree.backgroundColor = .darkSkyBlue
            smsThree.text = ""
        case smsFour:
            viewFour.backgroundColor = .darkSkyBlue
            smsFour.text = ""
        default :
            break
        }
    }
    
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         

         
         switch string {
         case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
             if textField == smsOne {
                 smsTwo.becomeFirstResponder()
                 smsOne.text = string
                 return true
             }
             if textField == smsTwo {
                 smsThree.becomeFirstResponder()
                 smsTwo.text = string
                 return true
             }
             if textField == smsThree {
                 smsFour.becomeFirstResponder()
                 smsThree.text = string
                 return true
             }
             if textField == smsFour {
                 smsFour.resignFirstResponder()
                 smsFour.text = string
                 return true
             }
             
         case "":
             return true
             
         default:
             return false
         }
    print(string)
         return true
    }

    @objc func tap() {
        
        smsOne.resignFirstResponder()
        smsTwo.resignFirstResponder()
        smsThree.resignFirstResponder()
        smsFour.resignFirstResponder()
        
    }


}
