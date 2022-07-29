//
//  TamagotchiChangeStartViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/24.
//

import UIKit

class TamagotchiChangeStartViewController: UIViewController {
    var tamagotchiData = StartTamagotchiInfo()
    
    //MARK: 변수 / Outlet 변수 설정
    @IBOutlet var behindView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var tamagotchiImageView: UIImageView!
    
    @IBOutlet weak var lineLabel: UIView!
    @IBOutlet weak var lineLabel2: UIView!
    @IBOutlet weak var tamagotchiNicknameLabel: UILabel!
    @IBOutlet weak var containView: UIView!
    
    @IBOutlet weak var tamagotchiExplainLabel: UILabel!
    // 버튼 변수 연결
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: UI 설정
        // 투명해지게 하는 배경 뷰 이미지 설정
        behindView.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.0)
        backgroundView.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.15)

        // 포함하는 뷰 배경 설정
        backgroundViewUI(sender: containView)
        containView.layer.cornerRadius = 10
        
        // 타이틀 설정
        labelUI(sender: tamagotchiNicknameLabel)
        
        // 설명하는 레이블 설정
        explainUI(sender: tamagotchiExplainLabel)
        
        // 구분선 색설정
        lineViewUI(sender: lineLabel)
        lightLineViewUI(sender: lineLabel2)
        
        // 버튼 설정
        buttonUI(sender: cancelButton)
        cancelButton.backgroundColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 0.2)
        buttonUI(sender: startButton)
        
        // 이미지, 타이틀, 설명은 클릭했을 때의 데이터를 받아서 띄워주는 형태로 해야할듯!
        tamagotchiImageView.image = UIImage(named: "\(tamagotchiNum)-6")
        
        //MARK: 선택한 다마고치의 설명 및 이름 설정
        tamagotchiChoice(nicknameLabel: tamagotchiNicknameLabel, explainLabel: tamagotchiExplainLabel)
    }
    
    @IBAction func cancelButtonClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func startButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(tamagotchiNum, forKey: "tamagotchiNum")
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "changeTamagotchi"), forKey: "choiceTamagotchi")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
}
