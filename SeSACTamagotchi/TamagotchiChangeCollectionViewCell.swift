//
//  TamagotchiChangeCollectionViewCell.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/24.
//

import UIKit

class TamagotchiChangeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    func configureTamagotchiChangeCell(data: Tamagotchis) {
        // textLabel UI
        nicknameLabel.text = data.title
        nicknameLabel.layer.borderWidth = 1
        nicknameLabel.layer.borderColor = CGColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        nicknameLabel.font = .boldSystemFont(ofSize: 12)
        nicknameLabel.textAlignment = .center
        nicknameLabel.layer.cornerRadius = 3
        
        nicknameLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        imageView.image = UIImage(named: data.image)
        
        
    }
    
}
