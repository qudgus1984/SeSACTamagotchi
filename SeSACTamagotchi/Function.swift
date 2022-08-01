//
//  Function.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/29.
//

import UIKit

var tamagotchiData = StartTamagotchiInfo()
func tamagotchiChoice(nicknameLabel: UILabel, explainLabel: UILabel) {
    //MARK: 선택한 다마고치의 설명 및 이름 설정
    if tamagotchiNum == 1 {
        nicknameLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].title
        explainLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].explain
        
    } else if tamagotchiNum == 2 {
        nicknameLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].title
        explainLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].explain
        
    } else if tamagotchiNum == 3 {
        nicknameLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].title
        explainLabel.text = tamagotchiData.StartTamagotchi[tamagotchiNum-1].explain
    }
}

class UserDefaultsHelper {
    private init() {}
    static let standard = UserDefaultsHelper()
    
    let UserDefault = UserDefaults.standard
    
    enum Key: String {
        case nickname, water, rice, First, tamagotchiNum
    }
    
    var nickname: String {
        get {
            return UserDefault.string(forKey: Key.nickname.rawValue) ?? "대장"
        }
        set {
            UserDefault.set(newValue, forKey: Key.nickname.rawValue)
        }
    }
    
    var water: Int {
        get {
            return UserDefault.integer(forKey: Key.water.rawValue)
        }
        set {
            UserDefault.set(newValue, forKey: Key.water.rawValue)
        }
    }
    var rice: Int {
        get {
            return UserDefault.integer(forKey: Key.rice.rawValue)
        }
        set {
            UserDefault.set(newValue, forKey: Key.rice.rawValue)
        }
    }
    var First: Bool {
        get {
            return UserDefault.bool(forKey: Key.First.rawValue)
        }
        set {
            UserDefault.set(newValue, forKey: Key.First.rawValue)
        }
    }
    var tamagotchiNum: Int {
        get {
            return UserDefault.integer(forKey: Key.tamagotchiNum.rawValue)
        }
        set {
            UserDefault.set(newValue, forKey: Key.tamagotchiNum.rawValue)
        }
    }
}
