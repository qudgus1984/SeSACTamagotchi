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
