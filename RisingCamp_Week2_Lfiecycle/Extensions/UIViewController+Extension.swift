//
//  UIViewController+Extension.swift
//  RisingCamp_Week2_Lfiecycle
//
//  Created by 김우성 on 2021/09/09.
//

import UIKit

extension UIViewController {
    func logMessage(_ message: String,
                    fileID: String = #fileID,
                    functionName: String = #function,
                    lineNumber: Int = #line
    ) {
        
        print("DEBUG>> \(message) \n-> Called by \(fileID) \n-> \(functionName) at line \(lineNumber)")
    }
}
