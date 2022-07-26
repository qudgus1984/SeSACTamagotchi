//
//  TamagotchiChangeCollectionViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/24.
//

import UIKit

class TamagotchiChangeCollectionViewController: UICollectionViewController {

    var tamagotchiData = TamagotchiInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: 레이아웃 설정
        layoutCell()
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
    }
    //MARK: 셀 개수 설정
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tamagotchiData.Tamagotchi.count
    }
    
    //MARK: 셀 화면 설정
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TamagotchiChangeCollectionViewCell", for: indexPath) as! TamagotchiChangeCollectionViewCell
        let data = tamagotchiData.Tamagotchi[indexPath.row]
        cell.configureTamagotchiChangeCell(data: data)
        return cell
    }
    //MARK: 레이아웃 셀 설정
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
        navigationItem.title = "다마고치 변경하기"

    }
    
    //MARK: 셀 클릭 시 데이터 설정
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            UserDefaults.standard.set(1, forKey: "changeTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "changeTamagotchi")
            let sb = UIStoryboard(name: "TamagotchiChangeStart", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiChangeStartViewController") as! TamagotchiChangeStartViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .overCurrentContext
            self.present(nav, animated: true)
            
        } else if indexPath.row == 1 {
            UserDefaults.standard.set(2, forKey: "changeTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "changeTamagotchi")
            let sb = UIStoryboard(name: "TamagotchiChangeStart", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiChangeStartViewController") as! TamagotchiChangeStartViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .overCurrentContext
            self.present(nav, animated: true)
        } else if indexPath.row == 2 {
            UserDefaults.standard.set(3, forKey: "changeTamagotchi")
            tamagotchiNum = UserDefaults.standard.integer(forKey: "changeTamagotchi")
            let sb = UIStoryboard(name: "TamagotchiChangeStart", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiChangeStartViewController") as! TamagotchiChangeStartViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .overCurrentContext
            self.present(nav, animated: true)
        } else {
            self.view.makeToast("곧 업데이트할게용")
        }
    }
}
