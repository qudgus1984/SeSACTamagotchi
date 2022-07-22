//
//  TamagotchiChoiceCollectionViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit


class TamagotchiChoiceCollectionViewController: UICollectionViewController {
    
    var tamagotchiData = TamagotchiInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        layoutCell()
        

    }




    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return tamagotchiData.Tamagotchi.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TamagotchiChoiceCollectionViewCell", for: indexPath) as! TamagotchiChoiceCollectionViewCell
        
        let data = tamagotchiData.Tamagotchi[indexPath.row]
        cell.configureTamagotchiCell(data: data)
        return cell
    }
    
    func layoutCell() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        
        layout.itemSize = CGSize(width: width / 3, height: (width / 3) * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }

}
