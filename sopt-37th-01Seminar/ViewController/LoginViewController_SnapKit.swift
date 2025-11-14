//
//  Login.swift
//  sopt-37th-01Seminar
//
//  Created by 이상수 on 11/1/25.
//

import UIKit
import SnapKit

//final class LoginViewController_SnapKit: UIViewController {
//    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//        override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        setUI()
//        //setHierarchy()
//    }
//    
//    private func setUI() {
//        self.view.backgroundColor = .white
//    }
//    
////    private func setHierarchy() {
////        [titleLabel, idTextField, passwordTextField, loginButton].forEach {
////            self.view.addSubview($0)
////        }
////    }
//    
//    private func presentToWelcomeVC() {
//        let welcomeViewController = WelcomeViewController_SnapKit()
//        welcomeViewController.modalPresentationStyle = .formSheet
//        welcomeViewController.id = idTextField.text
//        self.present(welcomeViewController, animated: true)
//    }
//    
//    private func pushToWelcomeVC() {
//        let welcomeViewController = WelcomeViewController_SnapKit()
//        welcomeViewController.id = idTextField.text
//        self.navigationController?.pushViewController(welcomeViewController, animated: true)
//    }
//    
//    @objc
//    private func loginButtonDidTap() {
//        //        presentToWelcomeVC()
//        pushToWelcomeVC()
//    }
//}
