//[ViewViewController.Swift]
import UIKit


class ViewController: UIViewController {

    var receivedStr = "" // 1 -> 프로퍼티 선언
    
    @IBOutlet weak var resultLabel: UILabel! // 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultLabel.text = receivedStr // 2
    }

    /// 버튼을 클릭하면 호출되는 메소드
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        
        
         //1. 버튼을 클릭한다.
         //2. "buttonDidTapped"가 호출된다.
         //3. SecondViewController 인스턴스를 생성한다. (SecondViewController는 다음 화면)
        //아래는 인스턴스를 생성하는 방법이다.
//        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
//            as! SecondViewController
        //위의 코드해석: 스토리보드가 있으면 스토리보드에 SecondVC라는 이름을 가진 ViewViewController 인스턴스를 만드는데 그거의 타입은 SecondViewController이다.
        //as! SecondViewController : ViewController를 상속받은 여러개의 클래스중에서 SecondViewController에만 효과를 내겠다. (타입 캐스팅) 즉, 일반 타입을 득정한 타입으로 구체화 시키는 것.
        // 옵셔널 바인딩 2 가지 종류
        
        guard let vc2 = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else { return }
        
        //4. 화면을 전환한다.
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController {
            
            vc.modalPresentationStyle = .fullScreen
            //modalPresentationStyle: 어떤식으로 화면을 전환하고 싶나?
            vc.delegate = self
            
            self.present(vc, animated: true)
            //vc라는 화면의 애니메이션을 True로 한다,.
        }
//        vc.delegate = self


    }
     
}


extension ViewController: SecondVCDelegate {
    func passData(text: String) {
        self.resultLabel.text = text
    }
    
    
}
