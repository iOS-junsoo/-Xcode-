//[SecondViewController.Swift]
import UIKit

protocol SecondVCDelegate: AnyObject {
    func passData(text: String)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondVCDelegate?
    
    // 2. 프로퍼티에서 값을 저장한다.
    var receivedText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        //텍스트 필드의 값이 변경되면 이 메서드가 호출된다.
        //키보드가 클릭될 때마다 해당 메서드 호출
        print(sender.text!)
        //!의 이유: 텍스트가 있을 수도 없을 수도 있기 때문이다.
        // 1. 텍스트필드에서 값을 입력받는다.
        self.receivedText = sender.text! //텍스트 프로퍼티 생성
    }
    
    
    @IBAction func backButtonDidTapped(_ sender: UIButton) {
        // 3. 뒤로가는 버튼을 누르면 첫번째 화면으로 출력
        // SecondVC 메모리에서 해제
    
        // 델리게이트를 통해서 메소드를 호출한다. 그떄 string 데이터를 전달한다.
        delegate?.passData(text: self.receivedText)
        self.dismiss(animated: true, completion: nil)
        //dismiss: 현재화면을 제거하고 이전화면으로 돌아감.
    }
   
}


