//
//  UIFont+Extension.swift
//  sopt-37th-01Seminar
//
//  Created by 이상수 on 10/16/25.
//

import UIKit

enum FontName: String {
    case pretendardLight = "Pretendard-Light"
    case pretendardMedium = "Pretendard-Medium"
}
 
extension UIFont {
    static func font(_ style: FontName, ofSize size: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: style.rawValue, size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return customFont
    }
    
    static let h1 = UIFont.font(.pretendardLight, ofSize: 18)
    
    @nonobjc class var h2: UIFont {
        return UIFont.font(.pretendardMedium, ofSize: 18)
    }
}
