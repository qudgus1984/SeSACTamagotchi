//
//  SceneDelegate.swift
//  SeSACTamagotchi
//
//  Created by 이병현 on 2022/07/22.
//

import UIKit


class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        
        //MARK: 다마고치 선택 후 main 화면으로 이동 -> 구현 시 네비바, 이미지 로드 실패문제 발생
        // -> 해결 방법 : nav 바까지 임베디드 해줘야 함
                        
        if UserDefaults.standard.bool(forKey: "First") {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav

            
        } else {
            let sb = UIStoryboard(name: "TamagotchiChoice", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "TamagotchiChoiceCollectionViewController") as! TamagotchiChoiceCollectionViewController
            window?.rootViewController = UINavigationController(rootViewController: vc)
            
        }
        
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

