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
        let labelWellcome = UILabel(frame: CGRect(x: 0, y: 0, width: 156, height: 42))
        labelWellcome.textColor = UIColor.dark
        labelWellcome.text = "Account Created!"
        labelWellcome.font = UIFont(name: "Helvetica", size: 35)
        labelWellcome.textAlignment = .center
        
        view.addSubview(labelWellcome)
        labelWellcome.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 93).isActive = true
        labelWellcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelWellcome.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Label Two
        
        let labelTwo = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        
        labelTwo.textColor = UIColor.dark.withAlphaComponent(0.5)
        labelTwo.text = "Dear user your account has been created successfully. Continue to start using app"
        labelTwo.font = UIFont(name: "Helvetica", size: 15)
        labelTwo.numberOfLines = 2
        labelTwo.textAlignment = .center
        
        view.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: labelWellcome.bottomAnchor, constant: 26).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        labelTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // buttonContinue
        buttonContinue.setTitle("Continue", for: .normal)
        buttonContinue.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        buttonContinue.titleLabel?.textColor = .white
        buttonContinue.backgroundColor = .darkSkyBlue
        buttonContinue.layer.cornerRadius = 10
        view.addSubview(buttonContinue)

        buttonContinue.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -169).isActive = true
        buttonContinue.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        buttonContinue.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        buttonContinue.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonContinue.translatesAutoresizingMaskIntoConstraints = false
        buttonContinue.addTarget(self, action: #selector(continuePress), for: .touchUpInside)
        
        
        let textViewBottom = UITextView()
        
        let attributedString = NSMutableAttributedString(string: "by clicking start, you agree to our Privacy Policy our Teams and Conditions")
        attributedString.addAttribute(.link, value: "https://t.me/vilkis", range: .init(location: 36, length: 14))
        attributedString.addAttribute(.link, value: "https://t.me/vilkis", range: .init(location: 55, length: 20))
        
        textViewBottom.backgroundColor = .clear
        textViewBottom.textColor = UIColor.dark.withAlphaComponent(0.5)
        textViewBottom.attributedText = attributedString
        textViewBottom.font = UIFont(name: "Helvetica", size: 13)
        textViewBottom.isScrollEnabled = false
        textViewBottom.isEditable = false
        textViewBottom.textAlignment = .center
        textViewBottom.isUserInteractionEnabled = true
        textViewBottom.linkTextAttributes = [
            .foregroundColor: UIColor.darkSkyBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        
        
        view.addSubview(textViewBottom)
        
        textViewBottom.topAnchor.constraint(equalTo: buttonContinue.bottomAnchor, constant: 22).isActive = true
        textViewBottom.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48).isActive = true
        textViewBottom.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48).isActive = true
        textViewBottom.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textViewBottom.translatesAutoresizingMaskIntoConstraints = false

        
    }
    
    
    @objc func continuePress(){
        let vc = HomePageViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }



}
