//
//  UnoViewController.swift
//  RisingCamp_Week2_Lfiecycle
//
//  Created by 김우성 on 2021/09/11.
//

import UIKit

class UnoViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func loadView() {
        super.loadView()
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        setupLayout()
    }
    
    
    
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    func setupLayout() {
        

    }
}
