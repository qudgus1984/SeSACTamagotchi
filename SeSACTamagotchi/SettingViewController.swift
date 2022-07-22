//
//  SettingViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/23.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "설정"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(cancelButton))
        
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    @objc func cancelButton() {
        self.navigationController?.popViewController(animated: true)
    }

}
