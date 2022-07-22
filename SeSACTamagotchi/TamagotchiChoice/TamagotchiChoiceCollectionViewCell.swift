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
        // textLabel UI
        tamagotchiNicknameLabel.text = data.title
        tamagotchiNicknameLabel.layer.borderWidth = 1
        tamagotchiNicknameLabel.layer.borderColor = CGColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        tamagotchiNicknameLabel.font = .boldSystemFont(ofSize: 12)
        tamagotchiNicknameLabel.textAlignment = .center
        tamagotchiNicknameLabel.layer.cornerRadius = 3
        
        tamagotchiNicknameLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        tamagotchiImageView.image = UIImage(named: data.image)
        
        
    }
    
}
