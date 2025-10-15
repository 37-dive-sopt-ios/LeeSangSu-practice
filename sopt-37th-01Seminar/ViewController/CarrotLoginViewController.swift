//
//  CarrotLoginViewController.swift
//  sopt-37th-01Seminar
//
//  Created by 이상수 on 10/11/25.
//

import UIKit

class CarrotLoginViewController: UIViewController {

    let titleLabel = UILabel()
    let idTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton()
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        setupUI()
        setupSubviews()
        setupButtonActions()
    }
    
}

extension CarrotLoginViewController {
    
    private func setupUI() {
        view.backgroundColor = .white
    }
    
    private func setupSubviews() {
        setupTitleLabel()
        setupIdTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupImageView()
    }
    
    private func setupTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.frame = Constants.titleFrame
        titleLabel.text = Constants.titleMessage
        titleLabel.font = .h1
        titleLabel.numberOfLines = 2
        titleLabel.textColor = .black
        titleLabel.shadowColor = .black
        titleLabel.shadowOffset = CGSize(width: 1, height: 0)
        titleLabel.textAlignment = .center
    }
    
    private func setupIdTextField() {
        view.addSubview(idTextField)
        idTextField.frame = Constants.idTextFrame
        idTextField.placeholder = Constants.id
        idTextField.borderStyle = .none
        idTextField.backgroundColor = .darkWhite
        idTextField.layer.cornerRadius = 8
        idTextField.layer.borderWidth = 1
        idTextField.layer.borderColor = UIColor.darkWhite.cgColor
        idTextField.setPadding(left: 10, right: 10)
    }
    
    private func setupPasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.frame = Constants.passwordTextFrame
        passwordTextField.placeholder = Constants.password
        passwordTextField.borderStyle = .none
        passwordTextField.isSecureTextEntry = true
        passwordTextField.backgroundColor = .darkWhite
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.darkWhite.cgColor
        passwordTextField.setPadding(left: 10, right: 10)
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.frame = Constants.loginButtonFrame
        loginButton.setTitle(Constants.loginButtonText, for: .normal)
        loginButton.backgroundColor = .carrot
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 8
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.frame = Constants.imageFrame
        imageView.image = UIImage(systemName: Constants.imageName)
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
    }
    
}

extension CarrotLoginViewController {
    
    private func setupButtonActions() {
        loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }

    @objc
    private func loginButtonDidTap() {
        presentToWelcomeVC()
        //pushToWelcomeVC()
    }
    
    private func presentToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.setLabelText(id: idTextField.text)
        welcomeViewController.modalPresentationStyle = .formSheet
        self.present(welcomeViewController, animated: true)
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }

}

extension CarrotLoginViewController {
    
    fileprivate enum Constants {
        static let titleMessage = "동네라서 가능한 모든 것\n 당근에서 가까운 이웃과 함께해요."
        static let id = "아이디"
        static let password = "비밀번호"
        static let loginButtonText = "로그인하기"
        static let imageName = "person.crop.circle"
        
        static let titleFrame = CGRect(x: 70, y: 163, width: 270, height: 70)
        static let idTextFrame = CGRect(x: 20, y: 276, width: UIScreen.main.bounds.width - 40, height: 52)
        static let passwordTextFrame = CGRect(x: 20, y: 335, width: UIScreen.main.bounds.width - 40, height: 52)
        static let loginButtonFrame = CGRect(x: 20, y: 422, width: UIScreen.main.bounds.width - 40, height: 58)
        static let imageFrame = CGRect(x: 70, y: 70, width: 50, height: 50)
    }
    
}
