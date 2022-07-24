//
//  LabelUI.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit

func labelUI(sender: UILabel) {
    sender.layer.borderWidth = 1
    sender.layer.borderColor = CGColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
    sender.backgroundColor = UIColor(red: 230/255, green: 245/255, blue: 245/255, alpha: 1)
    
    sender.font = .boldSystemFont(ofSize: 12)
    sender.textAlignment = .center
    sender.layer.cornerRadius = 3
    
    sender.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
}

func explainUI(sender: UILabel) {
    sender.textAlignment = .center
    sender.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
    sender.font = .systemFont(ofSize: 11)
    
}

func textFieldUI(sender: UITextField, text: String) {
    sender.textAlignment = .center
    sender.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
    sender.placeholder = text
    sender.borderStyle = .none
}

func labelTextUI(sender: UILabel) {
    sender.font = .boldSystemFont(ofSize: 12)
    sender.textAlignment = .center
    sender.layer.cornerRadius = 3
    sender.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
}

func simpleText(sender: UILabel) {
    sender.font = .boldSystemFont(ofSize: 12)
    sender.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
}
