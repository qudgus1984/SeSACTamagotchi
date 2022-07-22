//
//  TamagotchiStartViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit

class TamagotchiStartViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var tamagotchiImageView: UIImageView!
    
    @IBOutlet weak var lineLabel: UIView!
    @IBOutlet weak var tamagotchiNicknameLabel: UILabel!
    
    @IBOutlet weak var tamagotchiExplainLabel: UILabel!
    // 버튼 변수 연결
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = .black
        labelUI(sender: tamagotchiNicknameLabel)
        explainUI(sender: tamagotchiExplainLabel)
        lineLabel.layer.borderColor = CGColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        



    }
    
    @IBAction func cancelButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func startButtonClicked(_ sender: UIButton) {
    }
    

    

}
