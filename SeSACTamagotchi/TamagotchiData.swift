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
