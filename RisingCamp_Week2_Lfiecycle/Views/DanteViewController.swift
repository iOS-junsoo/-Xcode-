import UIKit

class DanteViewController: UIViewController {

    override func loadView() {
        super.loadView()
        //뷰 컨트롤러가 자신의 뷰, 그러니까 흔히 self.view처럼 접근하는 그 뷰 컨트롤러의 메인 뷰를 로드할 때 호출되는 메서드
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // View가 로딩된 직 후에 로직을 실행
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Viewrk 나타나기 직전에 로직을 실행
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // View가 나타난 직후에 로직을 실행해라
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // View가 사라지기 직전에 로직을 실행해라
    }
  
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        // View가 사라진 직후에 로직을 실행해라
    }
    
}
