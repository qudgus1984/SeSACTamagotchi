//
//  ButtonUI.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/23.
//

import UIKit

func buttonUI(sender: UIButton) {
    sender.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
}

func eatbuttonUI(sender: UIButton) {
    sender.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
    sender.layer.cornerRadius = 5
    sender.layer.borderWidth = 1
    sender.layer.borderColor = CGColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
    sender.titleLabel?.textAlignment = .center
    sender.titleLabel?.font.withSize(15)
}
