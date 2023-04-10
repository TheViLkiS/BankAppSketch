//
//  Extensions.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 05.04.2023.
//

import Foundation
import UIKit

extension UIColor {

  @nonobjc class var darkSkyBlue: UIColor {
    return UIColor(red: 90.0 / 255.0, green: 165.0 / 255.0, blue: 226.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var dark: UIColor {
    return UIColor(red: 28.0 / 255.0, green: 25.0 / 255.0, blue: 57.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var whiteBank: UIColor {
    return UIColor(white: 247.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var iOsSystemFillsLight2SecondaryFillColor: UIColor {
    return UIColor(red: 120.0 / 255.0, green: 120.0 / 255.0, blue: 128.0 / 255.0, alpha: 0.16)
  }

  @nonobjc class var iOsSystemTintsSystemGreenLight: UIColor {
    return UIColor(red: 52.0 / 255.0, green: 199.0 / 255.0, blue: 89.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var darkTwo: UIColor {
    return UIColor(red: 44.0 / 255.0, green: 41.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
  }
    @nonobjc class var greyblue20: UIColor {
      return UIColor(red: 138.0 / 255.0, green: 149.0 / 255.0, blue: 158.0 / 255.0, alpha: 0.2)
    }

}

extension UITextField {
    func indent(size:CGFloat) {
        self.leftView = UIView(frame: CGRect(x: self.frame.minX, y: self.frame.minY, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
    func eye(button: UIButton) {


        button.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        button.setImage(UIImage(systemName: "eye.fill"), for: .selected)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        button.tintColor = .systemGray
            
        self.rightView = button
        self.rightViewMode = .always
        
        
    }
    
    
}

extension UIViewController {
    
    func createUIViewConteinerAndShadow(image: UIImageView) -> UIView {
        
        let viewLayer = UIView()
        viewLayer.addSubview(image)
        viewLayer.layer.shadowOffset = CGSize(width: 0, height: 3)
        viewLayer.layer.shadowRadius = 3
        viewLayer.layer.shadowOpacity = 0.1
        viewLayer.layer.shadowColor = UIColor.black.cgColor
        
        
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        
        return viewLayer
    }
    
    func createTextField(textField: UITextField, name: String) {
        
        textField.placeholder = name
        textField.backgroundColor = .whiteBank
        textField.layer.cornerRadius = 10
        textField.indent(size: 20)
        textField.textColor = .darkTwo
        
        view.addSubview(textField)
    }
    
    func createTextFieldSMS(textField: UITextField, constTo: AnyObject){
        
        textField.textColor = .darkSkyBlue
        textField.backgroundColor = .clear
        textField.font = UIFont(name: "Helvetica", size: 35)
        view.addSubview(textField)
        textField.topAnchor.constraint(equalTo: constTo.bottomAnchor, constant: 142).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 60).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        textField.tintColor = .clear
        
        
    }
    
    func createLabel(label: UILabel ,text: String, size: CGFloat, color: UIColor = UIColor.dark.withAlphaComponent(0.5), lines: Int = 1, aligment: NSTextAlignment = .center, center: Bool = true) {
        
        label.textColor = color
        label.text = text
        label.font = UIFont(name: "Helvetica", size: size)
        label.textAlignment = .center
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = lines
        label.textAlignment = aligment

        
    }
    
    
    
    func constraintTo(obj: AnyObject,to: AnyObject, const: CGFloat, leading: CGFloat = 37, trailing: CGFloat = -37) {
        
        
        obj.topAnchor.constraint(equalTo: to.bottomAnchor, constant: const).isActive = true
        obj.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: leading).isActive = true
        obj.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: trailing).isActive = true
        obj.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        obj.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func createButton(button: UIButton,text: String, constraintTo: AnyObject, const: CGFloat, color: UIColor = UIColor.darkSkyBlue,textColor: UIColor = UIColor.white, size: CGFloat = 17) {
        
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: size)
        button.setTitleColor(textColor, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        view.addSubview(button)

        button.topAnchor.constraint(equalTo: constraintTo.bottomAnchor, constant: const).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 37).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -37).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false

    }
}
