//
//  SettingTableViewController.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/23.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    @IBOutlet var baseTableView: UITableView!
    var settingList = ["내 이름 설정하기", "다마고치 변경하기", "데이터 초기화"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseTableView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        

        // 높이 설정
        tableView.rowHeight = 60
        
        // label 설정
        
        
        navigationItem.title = "설정"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(cancelButton))
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
    }
    
    @objc func cancelButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // 셀 갯수 설정
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        
        cell.baseSettingView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        cell.settingLabel.text = settingList[indexPath.row]
        simpleText(sender: cell.settingLabel)
        if indexPath.row == 0 {
            cell.iconImageView.image = UIImage(systemName: "pencil")
            cell.nameLabel.text = "\(nickname)"
            cell.nameLabel.textColor = .systemGray
        } else if indexPath.row == 1 {
            cell.iconImageView.image = UIImage(systemName: "moon.fill")
            cell.nameLabel.text = .none
        } else if indexPath.row == 2 {
            cell.iconImageView.image = UIImage(systemName: "arrow.clockwise")
            cell.nameLabel.text = .none
        }
        cell.iconImageView.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        cell.nextButton.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let sb = UIStoryboard(name: "ChangeName", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "ChangeNameViewController") as! ChangeNameViewController
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 1 {
            let sb = UIStoryboard(name: "TamagotchiChange", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiChangeCollectionViewController") as! TamagotchiChangeCollectionViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
        else if indexPath.row == 2 { // Alert 띄우기
            let alert = UIAlertController(title: "데이터 초기화", message: "정말 다시 시작하실건가용?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "아냐!", style: .cancel))
            alert.addAction(UIAlertAction(title: "웅", style: .default, handler: {_ in self.resetData()}))
            present(alert, animated: true)
        }

    }
    
    func resetData() {
        UserDefaults.standard.set(0, forKey: "eat0");
        UserDefaults.standard.set(0, forKey: "eat1");
        UserDefaults.standard.set(1, forKey: "eat2")
    }
    

    
}




