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
