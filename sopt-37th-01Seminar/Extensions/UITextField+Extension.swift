//
//  UITextField+Extension.swift
//  sopt-37th-01Seminar
//
//  Created by 이상수 on 10/16/25.
//

import UIKit

extension UITextField {
    
    func setPadding(
        left: CGFloat? = nil,
        right: CGFloat? = nil
    ) {
        if let left {
            self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.height))
            self.leftViewMode = .always
        }
        if let right {
            self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: self.frame.height))
            self.rightViewMode = .always
        }
    }
   
}


