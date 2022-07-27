//
//  TamagotchiData.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import Foundation

struct Tamagotchis {
    var title: String
    var image: String
}

//MARK: 다마고치 데이터
struct TamagotchiInfo {
    let Tamagotchi: [Tamagotchis] = [
    Tamagotchis(title: "따끔따끔 다마고치", image: "1-6"),
    Tamagotchis(title: "방실방실 다마고치", image: "2-6"),
    Tamagotchis(title: "반짝반짝 다마고치", image: "3-6"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    Tamagotchis(title: "준비중이에요", image: "noImage"),
    ]
}

//MARK: 다마고치 기본 설정 구조체

struct StartTamagotchis {
    var title: String
    var image: String
    var explain: String
}

struct StartTamagotchiInfo {
    let StartTamagotchi: [StartTamagotchis] = [
    StartTamagotchis(title: "따끔따끔 다마고치", image: "1-6", explain: "저는 따끔따끔 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저 따가워요 건들 ㄴㄴ 따끔해요~"),
    StartTamagotchis(title: "방실방실 다마고치", image: "2-6", explain: "저는 방실방실 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저는 해맑지만 화나면 무서워요~ 조심하세용 방실방실해요~"),
    StartTamagotchis(title: "반짝반짝 다마고치", image: "3-6", explain: "저는 반짝반짝 다마고치입니다. 몸무게는 150톤이고 키는 150km입니당 저는 밝아서 눈아플수도 있어용 조심하세용 반짝반짝해요~")
    ]
}

//MARK: 프로젝트에서 사용하는 변수들 모음
var nickname:String = UserDefaults.standard.string(forKey: "nickname") ?? "대장"
var tamagotchiTalk: [String] = ["\(nickname)님, 오늘 깃허브 푸쉬 하셨겠죠?", "하루에 공부 8시간은 해야겠죠?", "설마 오늘도 노시는건 아니죠?", "오늘의 TIL는 작성하셨겠죠?", "오늘 과제는 잘 마무리했나요?", "지금 잠이와요? 그 개발실력에?", "복습 안하셨다고요? 오늘 잠은 안자시는거죠?", "클래스와 구조체에는 무슨 차이가 있을까요?", "\(nickname)님, 그래도 가끔은 쉬어가는 시간도 필요해요"]

var eatArray: [Int] = [UserDefaults.standard.integer(forKey: "eat0"), UserDefaults.standard.integer(forKey: "eat1"), UserDefaults.standard.integer(forKey: "eat2")]
var tamagotchiNum = 0
