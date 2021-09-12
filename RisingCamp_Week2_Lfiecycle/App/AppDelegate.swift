import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate { //UIResponder, UIApplicationDelegate를 상속받는 AppDelegate
    //UIResponder : 우리가 클릭을 하면 클릭에 대한 응답을 해주는 그런 Touch Event를 담당해주는 객체
    //UIApplicationDelegate : 앱의 행동을 관리하기 위한 메서드의 모음(싱글톤)
    //Delegate : 앱이 실행했을 때 로직실행을 실행하는 등의 다양한 상황에서 처리를 할 수 있도록 만든 것


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 어플리케이션이 실행된 후에 해당 메서드를 실행하겠다.
        //didFinishLaunchingWithOptions launchOptions : 앱 런칭이 끝난 다음에 이 메서드가 호출됨.
        return true
    }

    //**대부분 아래의 메서드들은 사용하지 않기 때묻에 그대로 놔두는 경우가 많다.**
    
    // MARK: UISceneSession Lifecycle
    //[생성 직전에 호출]
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // 새로운 Scene Session이 생성된다. 그때 이 메서드를 호출한다.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    //[종료된 후에 호출]
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        //Scene Session이 버려졌을 때 이 메서드를 실행한다.
        //즉, 종료한 후에 호출되는것
    }
    //[iOS Programming]
    //did : 어떤 사건 직후 -> 이미 선택된 것
    //will : 어떤 사건 직전 -> 아직 선택되지 않은 것
}

