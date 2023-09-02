

import UIKit

class ViewController: UIViewController {
    
    private let bgView = MakeView.shared.makeView(backgroundColor: Colors.background, cornerRadius: 50)
    
    private let loginLBL = MakeView.shared.makeLabel(text: "Login", textColor: .black, font: .systemFont(ofSize: 18, weight: .heavy))
    
    private let userIMG = UIImageView(image: UIImage(named: "User"))
    
    private let welcomeLBL = MakeView.shared.makeLabel(text: "Welcome back, Rohit thakur", textColor: Colors.grey, font: .systemFont(ofSize: 14))
    
    private let illustration = UIImageView(image: UIImage(named: "startPageIMG"))
    
    private let enterNumberLBL = MakeView.shared.makeLabel(text: "Enter Your Mobile Number", textColor: Colors.coral, font: .systemFont(ofSize: 17, weight: .heavy))
    
    private let numberTF = MakeView.shared.makeTF(textColor: .black, font: .systemFont(ofSize: 13, weight: .thin), placeHolder: "Enter Number",cornerRadius: 10, leftView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), rightView: UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19)), autocorrectionType: .no, keyBoardType: .phonePad)
    
    private let changeNumberBTN = MakeView.shared.makeButton(titleColor: .black, font: .systemFont(ofSize: 12, weight: .thin), title: "Change Number ?")
    
    private let LoginBTN = MakeView.shared.makeButton(titleColor: .white, font: .systemFont(ofSize: 15, weight: .heavy), title: "Login",cornerRadius: 10, backgroundColor: Colors.coral)
    
    private let googleImg = UIImageView(image: UIImage(named: "google"))
    
    private let googleLBL = MakeView.shared.makeLabel(text: "Google", textColor: .black, font: .systemFont(ofSize: 14, weight: .thin))
    
    private let signUpLBL = MakeView.shared.makeLabel(text: "Ypu Don't have an account ?", textColor: .black, font: .systemFont(ofSize: 12, weight: .thin))
    
    private let signUpBTN = MakeView.shared.makeButton(titleColor: Colors.translucentBlack, font: .systemFont(ofSize: 12, weight: .heavy), title: "Sign Up")
    
    private let alertLabel = MakeView.shared.makeLabel(text: "*Wrong phone number format", textColor: .red, font: .systemFont(ofSize: 10), iShidden: true)
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initUI()
    }
    
    private func initUI(){
        bgViewConfig()
        loginLBLConfig()
        userImgConfig()
        
        welcomeLBLConfig()
        
        illustrationConfig()
        
        enterNumberLBLConfig()
        
        numberTFConfig()
        alertConfig()
        
        chamgeNumberBTNConfig()
        
        loginBTNConfig()
        
        googleLBLConfig()
        googleImgConfig()
        
        signUpLBLConfig()
        signUpBTNConfig()
    }
    
    private func bgViewConfig(){
        view.addSubview(bgView)
        
        bgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            bgView.topAnchor.constraint(equalTo: view.topAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -33)
        ])
    }
    
    
    private func loginLBLConfig(){
        bgView.addSubview(loginLBL)
        
        loginLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            loginLBL.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
            loginLBL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginLBL.heightAnchor.constraint(equalToConstant: 23)
        ])
    }
    
    private func userImgConfig(){
        bgView.addSubview(userIMG)
        
        userIMG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            userIMG.centerYAnchor.constraint(equalTo: loginLBL.centerYAnchor),
            userIMG.leadingAnchor.constraint(equalTo: loginLBL.trailingAnchor, constant: 24),
            userIMG.heightAnchor.constraint(equalToConstant: 19),
            userIMG.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func welcomeLBLConfig(){
        bgView.addSubview(welcomeLBL)
        
        welcomeLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            welcomeLBL.topAnchor.constraint(equalTo: loginLBL.bottomAnchor, constant: 3),
            welcomeLBL.leadingAnchor.constraint(equalTo: loginLBL.leadingAnchor),
            welcomeLBL.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func illustrationConfig(){
        bgView.addSubview(illustration)
        
        illustration.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            illustration.topAnchor.constraint(equalTo: welcomeLBL.bottomAnchor, constant: 49),
            illustration.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            illustration.heightAnchor.constraint(equalToConstant: 231),
            illustration.widthAnchor.constraint(equalToConstant: 296)
        ])
    }
    
    private func enterNumberLBLConfig(){
        bgView.addSubview(enterNumberLBL)
        
        enterNumberLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            enterNumberLBL.topAnchor.constraint(equalTo: illustration.bottomAnchor, constant: 15),
            enterNumberLBL.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterNumberLBL.heightAnchor.constraint(equalToConstant: 26)
        ])
    }
    
    private func numberTFConfig(){
        bgView.addSubview(numberTF)
        
        numberTF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            numberTF.topAnchor.constraint(equalTo: enterNumberLBL.bottomAnchor, constant: 31),
            numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            numberTF.heightAnchor.constraint(equalToConstant: 43)
        ])
    }
    
    private func alertConfig(){
        bgView.addSubview(alertLabel)
        
        alertLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            alertLabel.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 5),
            alertLabel.leadingAnchor.constraint(equalTo: numberTF.leadingAnchor),
            
        ])
    }
    
    
    
    private func chamgeNumberBTNConfig(){
        bgView.addSubview(changeNumberBTN)
        
        changeNumberBTN.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            changeNumberBTN.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 11),
            changeNumberBTN.trailingAnchor.constraint(equalTo: numberTF.trailingAnchor, constant: -17),
            changeNumberBTN.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func loginBTNConfig(){
        bgView.addSubview(LoginBTN)
        
        LoginBTN.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            LoginBTN.topAnchor.constraint(equalTo: changeNumberBTN.bottomAnchor, constant: 35),
            LoginBTN.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            LoginBTN.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            LoginBTN.heightAnchor.constraint(equalToConstant: 43)
        ])
        
        LoginBTN.addTarget(self, action: #selector(loginBTNPressed), for: .touchUpInside)
    }
    private func googleLBLConfig(){
        bgView.addSubview(googleLBL)
        
        googleLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            googleLBL.topAnchor.constraint(equalTo: LoginBTN.bottomAnchor, constant: 45),
            googleLBL.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleLBL.heightAnchor.constraint(equalToConstant: 21)
        ])
    }
    private func googleImgConfig(){
        bgView.addSubview(googleImg)
        
        googleImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            googleImg.centerYAnchor.constraint(equalTo: googleLBL.centerYAnchor),
            googleImg.trailingAnchor.constraint(equalTo: googleLBL.leadingAnchor, constant: -5),
            googleImg.widthAnchor.constraint(equalToConstant: 21),
            googleImg.heightAnchor.constraint(equalToConstant: 21)
        ])
    }
    
    private func signUpLBLConfig(){
        bgView.addSubview(signUpLBL)
        
        signUpLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            signUpLBL.topAnchor.constraint(equalTo: googleLBL.bottomAnchor, constant: 87),
            signUpLBL.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -20),
            signUpLBL.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    private func signUpBTNConfig(){
        bgView.addSubview(signUpBTN)
        
        signUpBTN.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            signUpBTN.centerYAnchor.constraint(equalTo: signUpLBL.centerYAnchor),
            signUpBTN.leadingAnchor.constraint(equalTo: signUpLBL.trailingAnchor, constant: 5),
            signUpBTN.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    @objc func loginBTNPressed(){
        
        
        if checkPhoneNumber(){
            let vc = ContactsViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    private func checkPhoneNumber() -> Bool{
        guard let phoneNumber = numberTF.text else {
            return false
        }
        if phoneNumber.hasPrefix("+996") && phoneNumber.count == 13 {
            alertLabel.isHidden = true
            numberTF.layer.borderWidth = 0
            
            return true
            
        }else {
            alertLabel.isHidden = false
            numberTF.layer.borderColor = UIColor(ciColor: .red).cgColor
            numberTF.layer.borderWidth = 1
            
            return false
        }
    }
    
}
     





