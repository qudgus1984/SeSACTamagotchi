//
//  MainViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var talkLabel: UILabel!
    
    @IBOutlet weak var lightLineView: UIView!
    @IBOutlet weak var lineView1: UIView!
    @IBOutlet weak var lineView2: UIView!
    
    @IBOutlet weak var riceTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    
    @IBOutlet weak var riceButton: UIButton!
    @IBOutlet weak var waterButton: UIButton!
    
    @IBOutlet weak var tamagotchiImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 배경 설정
        backgroundViewUI(sender: backgroundView)
        
        // label 설정
        labelUI(sender: nicknameLabel)
        labelTextUI(sender: levelLabel)
        
        // line 설정
        lightLineViewUI(sender: lightLineView)
        lineViewUI(sender: lineView1)
        lineViewUI(sender: lineView2)
        
        // textfield 설정
        textFieldUI(sender: riceTextField, text: "밥주세용")
        textFieldUI(sender: waterTextField, text: "물주세용")
        
        // button 설정
        eatbuttonUI(sender: riceButton)
        eatbuttonUI(sender: waterButton)
        
        // 다마고치 talk 설정
        talkLabel.textAlignment = .center
        talkLabel.text = tamagotchiTalk.randomElement()
        talkLabel.numberOfLines = 0
        
        // 기본값 설정
        levelLabel.text = "LV\(UserDefaults.standard.integer(forKey: "eat2"))・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"
        
        // 기본 이미지 설정
        tamagotchiImage.image = UIImage(named: "\(tamagotchiNum)-\(UserDefaults.standard.integer(forKey: "eat2"))")

        
    
        
        
        navigationItem.title = "\(nickname)님의 다마고치"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(settingButtonClicked))
        
        navigationItem.rightBarButtonItem?.tintColor = .black
        
        
        

    }
    
    @objc func settingButtonClicked(_ sender: UIButton) {
        // 검색화면 UIVC
        let sb = UIStoryboard(name: "Setting", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SettingTableViewController") as! SettingTableViewController

        self.navigationController?.pushViewController(vc, animated: true)
        

    }
    
    @IBAction func riceButtonTapped(_ sender: UIButton) {
        talkLabel.text = tamagotchiTalk.randomElement()
        let currentCount = UserDefaults.standard.integer(forKey: "eat0")
        let updateCount = currentCount + 1
        UserDefaults.standard.set(updateCount, forKey: "eat0")
        eatArray[0] = updateCount
        eatArray[2] = ((eatArray[0] / 5) + (eatArray[1] / 2)) / 10
        UserDefaults.standard.set(eatArray[2], forKey: "eat2")
        
        // LVLabel 출력
        levelLabel.text = "LV\(UserDefaults.standard.integer(forKey: "eat2"))・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"
        tamagotchiImageReset()
        
    }
    
    @IBAction func waterButtonTappend(_ sender: UIButton) {
        talkLabel.text = tamagotchiTalk.randomElement()
        

        let currentCount = UserDefaults.standard.integer(forKey: "eat1")
        let updateCount = currentCount + 1
        UserDefaults.standard.set(updateCount, forKey: "eat1")
        eatArray[1] = updateCount
        eatArray[2] = ((eatArray[0] / 5) + (eatArray[1] / 2)) / 10
        UserDefaults.standard.set(eatArray[2], forKey: "eat2")
        
        //LVLabel 출력
        levelLabel.text = "LV\(UserDefaults.standard.integer(forKey: "eat2"))・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"
        tamagotchiImageReset()
    }
    
    func tamagotchiImageReset() {
        tamagotchiImage.image = UIImage(named: "\(tamagotchiNum)-\(UserDefaults.standard.integer(forKey: "eat2"))")
        if UserDefaults.standard.integer(forKey: "eat2") >= 10 {
            UserDefaults.standard.set(9, forKey: "eat2")
        }
    }

    
    
}
