//
//  TamagotchiChoiceCollectionViewCell.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit

class TamagotchiChoiceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tamagotchiImageView: UIImageView!
    @IBOutlet weak var tamagotchiNicknameLabel: UILabel!
    
    func configureTamagotchiCell(data: Tamagotchis) {
        tamagotchiNicknameLabel.text = data.title
        tamagotchiImageView.image = UIImage(named: data.image)
    }
    
}
