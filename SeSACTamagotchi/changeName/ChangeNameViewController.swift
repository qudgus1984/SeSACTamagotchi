//
//  ChangeNameViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/24.
//

import UIKit

class ChangeNameViewController: UIViewController {
    
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(nickname)님 이름 정하기"
        navigationItem.rightBarButtonItem =
        UIBarButtonItem(title: "저장", style: .plain, target: self, action: #selector(saveButton))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        nicknameTextField.placeholder = nickname
        navigationController?.navigationBar.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
    }
    
    @objc func saveButton() {
        if nicknameTextField == nil {
            return nicknameTextField.placeholder = nickname
        } else {
            nickname = nicknameTextField.text!
        }
    }
    
    
}
