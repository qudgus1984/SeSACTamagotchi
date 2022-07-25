//
//  TamagotchiChoiceCollectionViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit
import Toast


class TamagotchiChoiceCollectionViewController: UICollectionViewController {
    
    var tamagotchiData = TamagotchiInfo()
    var tamagotchinum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        layoutCell()
        
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)

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
        collectionView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        
        // nav 상단 title
        navigationItem.title = "다마고치 선택하기"

    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        
        if indexPath.row == 0 {
            UserDefaults.standard.set(1, forKey: "choiceTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "choiceTamagotchi")
            let sb = UIStoryboard(name: "TamagotchiStart", bundle: nil)
            //2.
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiStartViewController") as! TamagotchiStartViewController
            //2.5
            let nav = UINavigationController(rootViewController: vc)
            
            //2.5 present 시 옵션
            nav.modalPresentationStyle = .fullScreen
            //3
            self.present(nav, animated: true)
        } else if indexPath.row == 1 {
            UserDefaults.standard.set(2, forKey: "choiceTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "choiceTamagotchi")
            

            let sb = UIStoryboard(name: "TamagotchiStart", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiStartViewController") as! TamagotchiStartViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: true)
        } else if indexPath.row == 2 {
            UserDefaults.standard.set(3, forKey: "choiceTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "choiceTamagotchi")
            let sb = UIStoryboard(name: "TamagotchiStart", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiStartViewController") as! TamagotchiStartViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: true)
        } else {
            self.view.makeToast("곧 업데이트할게용")

        }
    }

}
