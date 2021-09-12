//
//  TestViewController.swift
//  RisingCamp_Week2_Lfiecycle
//
//  Created by 김우성 on 2021/09/09.
//

import UIKit

struct TestModel {
    var text: String
}

class TestViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    let model = TestModel(text: "시험끗...")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // 서브스크립트
        titleLabel.text = model.text
    }
    
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        // 버튼을 클릭하면 호출되는 메소드
    }
}
