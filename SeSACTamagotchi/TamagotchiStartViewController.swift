//
//  TamagotchiStartViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit

class TamagotchiStartViewController: UIViewController {
    
    //MARK: 변수 / Outlet 변수 설정
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
        
        //MARK: UI 관련 설정
        
        // 투명해지게 하는 배경 뷰 이미지 설정
        behindView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)

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
        //MARK: 선택한 다마고치 이미지 출력
        tamagotchiImageView.image = UIImage(named: "\(tamagotchiNum)-6")
        
        //MARK: 선택한 다마고치의 설명 및 이름 설정
        if tamagotchiNum == 1 {
            tamagotchiNicknameLabel.text = "따끔따끔 다마고치"
            tamagotchiExplainLabel.text = "저는 따끔따끔 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저 따가워요 건들 ㄴㄴ 따끔해요~"
        } else if tamagotchiNum == 2 {
            tamagotchiNicknameLabel.text = "방실방실 다마고치"
            tamagotchiExplainLabel.text = "저는 방실방실 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저는 해맑지만 화나면 무서워요~ 조심하세용 방실방실해요~"
        } else if tamagotchiNum == 3 {
            tamagotchiNicknameLabel.text = "반짝반짝 다마고치"
            tamagotchiExplainLabel.text = "저는 반짝반짝 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저는 밝아서 눈아플수도 있어용 조심하세용 반짝반짝해요~"
        }
    }
    
    //MARK: 취소 버튼 클릭 시
    @IBAction func cancelButtonClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
    //MARK: 시작 버튼 클릭 시
    @IBAction func startButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let nav = UINavigationController(rootViewController: vc)
        
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
        
    }
    
}
