//
//  AccountCreatedViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 07.04.2023.
//

import UIKit

class AccountCreatedViewController: UIViewController {

    var buttonContinue = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        let imageView = UIImageView(image: UIImage(named: "Thumbs Up"))
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Label One
        let labelWellcome = UILabel()
        createLabel(label: labelWellcome, text: "Account Created!", size: 35, color: .dark)
        labelWellcome.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 93).isActive = true

        
        //Label Two
        
        let labelTwo = UILabel()
        createLabel(label: labelTwo, text: "Dear user your account has been created successfully. Continue to start using app", size: 15, lines: 2)

        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true

        
        
        // buttonContinue
        
        createButton(button: buttonContinue, text: "Continue", constraintTo: labelWellcome, const: 160)

        buttonContinue.addTarget(self, action: #selector(continuePress), for: .touchUpInside)
        
        //textViewBottom
        
        addTextViewBottom()

    }
    
    
    @objc func continuePress(){
        let vc = HomeViewController()
//        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }



}
