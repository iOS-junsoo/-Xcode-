import UIKit

// scene -> window -> View

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // 앱이 실행되면 이 메서드가 실행된다.
        // Scene이 연결되기 직전에 이 메서드가 실행된다.
        // 이 코드 덕분에 우리가 스토리보드에 작업한 것을 연결시키는 로직이 핋요 없었던 것이다.
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // 씬(scene)이 시스템에서 해제될 때 호출됩니다.
        // 씬(scene)이 백그라운드로 들어간 직후 또는 세션이 삭제될 때 이 문제가 발생합니다.
        // 다음에 장면이 연결될 때 다시 만들 수 있는 이 장면과 관련된 리소스를 해제합니다.
        // 세션이 반드시 삭제되지 않았으므로 장면이 나중에 다시 연결될 수 있습니다(대신 '응용 프로그램:DidcardSceneSessions' 참조).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Active : 상호작용이 가능한 상태 - 활성화된 상태(앱이 실행된 상태)
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Inactive : 상호작용이 불가능한 상태이지만 화면 켜진상태 - 게임을 하다가 전화가 왔을 때 위에 작게 전화 팝업창이 뜨는 경우
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Foreground - 화면을 띄워준 상태
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Background - 화면에 나타나지 않고 앱이 구동되는 상태
    }
}

