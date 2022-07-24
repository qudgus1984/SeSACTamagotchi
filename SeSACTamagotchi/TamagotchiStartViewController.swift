//
//  TamagotchiStartViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit

class TamagotchiStartViewController: UIViewController {
    
    var tamagotchiData = StartTamagotchiInfo()
    
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
        

        

    }
    
    @IBAction func cancelButtonClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func startButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        //2.
        let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        //2.5
        let nav = UINavigationController(rootViewController: vc)
        
        //2.5 present 시 옵션
        nav.modalPresentationStyle = .fullScreen
        //3
        self.present(nav, animated: true)
        
    }
    

}
