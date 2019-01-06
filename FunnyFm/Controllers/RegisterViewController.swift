//
//  RegisterViewController.swift
//  FunnyFm
//
//  Created by Duke on 2019/1/4.
//  Copyright © 2019 Duke. All rights reserved.
//

import UIKit

class RegisterViewController: BaseViewController {

    @IBOutlet var tipLB: UIView!
    
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    @IBOutlet weak var nextImageVIew: UIImageView!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    var mailTF : FMTextField!
    
    var passTF : FMTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.dw_addSubviews()
        self.loadingView.isHidden = true
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(endEidted))
        self.view.addGestureRecognizer(tap)
    }

    @IBAction func registerAction(_ sender: Any) {
        
        
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController()
    }
    
    @objc func endEidted(){
        self.view.endEditing(true)
    }

}

extension RegisterViewController {
    
    func dw_addSubviews() {
        
        self.mailTF.snp.makeConstraints { (make) in
            make.left.equalTo(self.tipLB)
            make.top.equalTo(self.tipLB.snp.bottom).offset(AdaptScale(100))
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(50)
        }
        
        self.passTF.snp.makeConstraints { (make) in
            make.left.equalTo(self.tipLB)
            make.top.equalTo(self.mailTF.snp.bottom).offset(16)
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(50)
        }
        
        self.registerBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.passTF.snp.bottom).offset(AdaptScale(40))
        }
        
        
    }
    
    func setupUI() {
        self.mailTF = FMTextField.init(frame: CGRect.zero)
        self.mailTF.cornerRadius = 15;
        self.mailTF.tintColor = CommonColor.mainRed.color
        self.mailTF.backgroundColor = CommonColor.cellbackgroud.color
        self.mailTF.placeholder = "邮箱"
        self.mailTF.returnKeyType = .done
        self.mailTF.font = pfont(fontsize4)
        self.mailTF.textColor = CommonColor.title.color
        self.mailTF.delegate = self.mailTF
        self.mailTF.setValue(p_bfont(12), forKeyPath: "_placeholderLabel.font")
        self.mailTF.setValue(CommonColor.content.color, forKeyPath: "_placeholderLabel.textColor")
        self.view.addSubview(self.mailTF)
        
        self.passTF = FMTextField.init(frame: CGRect.zero)
        self.passTF.cornerRadius = 15;
        self.passTF.tintColor = CommonColor.mainRed.color
        self.passTF.backgroundColor = CommonColor.cellbackgroud.color
        self.passTF.placeholder = "密码"
        self.passTF.returnKeyType = .done
        self.passTF.font = pfont(fontsize4)
        self.passTF.textColor = CommonColor.title.color
        self.passTF.delegate = self.mailTF
        self.passTF.setValue(p_bfont(12), forKeyPath: "_placeholderLabel.font")
        self.passTF.setValue(CommonColor.content.color, forKeyPath: "_placeholderLabel.textColor")
        self.view.addSubview(self.passTF)
    }
}
