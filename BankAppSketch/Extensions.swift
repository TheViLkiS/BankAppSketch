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

