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
    
    @IBOutlet weak var lightLineView: UIView!
    @IBOutlet weak var lineView1: UIView!
    @IBOutlet weak var lineView2: UIView!
    
    @IBOutlet weak var riceTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    var titleName = "Cody"
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
        
        navigationItem.title = "\(titleName)님의 다마고치"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(settingButtonClicked))
        
        navigationItem.rightBarButtonItem?.tintColor = .black


    }
    
    @objc func settingButtonClicked(_ sender: UIButton) {
        // 검색화면 UIVC
        let sb = UIStoryboard(name: "Setting", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController

        self.navigationController?.pushViewController(vc, animated: true)
        

        
    }
}
