//
//  MainViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/23.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: 변수 / Outlet 변수 설정
    var level = 0
    var tamagotchiLevel = 0

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
        //MARK: UI 설정
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
        riceTextField.keyboardType = .numberPad
        waterTextField.keyboardType = .numberPad

        // button 설정
        eatbuttonUI(sender: riceButton)
        eatbuttonUI(sender: waterButton)
        
        // 다마고치 talk 설정
        talkLabel.textAlignment = .center
        talkLabel.text = tamagotchiTalk.randomElement()
        talkLabel.numberOfLines = 0
        
        // 기본값 설정
        levelLabel.text = "LV\(UserDefaults.standard.integer(forKey: "level"))・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"

        // 기본 이미지 설정
        tamagotchiImage.image = UIImage(named:"\(UserDefaults.standard.integer(forKey: "tamagotchiNum"))-\(UserDefaults.standard.integer(forKey: "eat2"))")

        //MARK: 네비게이션 바 설정
        nickname = UserDefaults.standard.string(forKey: "nickname") ?? "대장"
        navigationItem.title = "\(nickname)님의 다마고치"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(settingButtonClicked))
        
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
    //MARK: SettingButton 설정
    @objc func settingButtonClicked(_ sender: UIButton) {
        // 검색화면 UIVC
        let sb = UIStoryboard(name: "Setting", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SettingTableViewController") as! SettingTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: 밥주는 버튼클릭시
    @IBAction func riceButtonTapped(_ sender: UIButton) {
        talkLabel.text = tamagotchiTalk.randomElement()
        let currentCount = UserDefaults.standard.integer(forKey: "eat0")
        let updateCount = currentCount + 1
        UserDefaults.standard.set(updateCount, forKey: "eat0")
        eatArray[0] = updateCount
        eatArray[2] = ((eatArray[0] / 5) + (eatArray[1] / 2))
        for i in stride(from: 2, through: 9, by: 1){
            switch eatArray[2] {
            case 0...19:
                level = 1
                tamagotchiLevel = level
            case i*10...(i+1)*10-1:
                level = i
                tamagotchiLevel = level
            case 100...:
                level = 10
                tamagotchiLevel = level - 1
            default:break
                
            }
        }
        UserDefaults.standard.set(tamagotchiLevel, forKey: "eat2")
        UserDefaults.standard.set(level, forKey: "level")
        
        //LVLabel 출력
        levelLabel.text = "LV\(level)・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"
        tamagotchiImageReset()
    }
    //MARK: 물주는 버튼 클릭시 설정
    @IBAction func waterButtonTappend(_ sender: UIButton) {
        talkLabel.text = tamagotchiTalk.randomElement()
        while true{
            let s = tamagotchiTalk.randomElement()
            guard talkLabel.text != s else {
                continue
            }
            talkLabel.text = s
            break
        }
        let currentCount = UserDefaults.standard.integer(forKey: "eat1")
        let updateCount = currentCount + 1
        UserDefaults.standard.set(updateCount, forKey: "eat1")
        eatArray[1] = updateCount
        eatArray[2] = ((eatArray[0] / 5) + (eatArray[1] / 2))
        for i in stride(from: 2, through: 9, by: 1){
            switch eatArray[2] {
            case 0...19:
                level = 1
                tamagotchiLevel = level
            case i*10...(i+1)*10:
                level = i
                tamagotchiLevel = level
            case 100...:
                level = 10
                tamagotchiLevel = level - 1
            default: break
            }
        }
        UserDefaults.standard.set(tamagotchiLevel, forKey: "eat2")
        UserDefaults.standard.set(level, forKey: "level")
        
        //LVLabel 출력
        levelLabel.text = "LV\(level)・밥알 \(UserDefaults.standard.integer(forKey: "eat0"))개・물방울\(UserDefaults.standard.integer(forKey: "eat1"))개"
        tamagotchiImageReset()
    }
    
    //MARK: 이미지 화면 업데이트 필요 함수 설정
    func tamagotchiImageReset() {
        tamagotchiImage.image = UIImage(named:"\(UserDefaults.standard.integer(forKey: "tamagotchiNum"))-\(UserDefaults.standard.integer(forKey: "eat2"))")
    }

    //MARK: 밥주는 텍스트 필드 클릭 시
    @IBAction func riceTextFieldTapped(_ sender: UITextField) {
        guard let totalRice = Int(sender.text ?? "0") else { return }
        let totalRices = UserDefaults.standard.integer(forKey: "eat0") + totalRice
        UserDefaults.standard.set(totalRices, forKey: "eat0")
    }
    
    //MARK: 물주는 텍스트 필드 클릭 시
    @IBAction func waterTextFieldTapped(_ sender: UITextField) {
        guard let totalWater = Int(sender.text ?? "0") else { return }
        let totalWaters = UserDefaults.standard.integer(forKey: "eat1") + totalWater
        UserDefaults.standard.set(totalWaters, forKey: "eat1")
    }
    
    //MARK: 화면 클릭 시 키보드 내리기
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
