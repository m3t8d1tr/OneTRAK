//
//  CustomUITextField.swift
//  OneTRAK
//
//  Created by Денис on 18.03.17.
//  Copyright © 2017 Tceh. All rights reserved.
//

import Foundation
import UIKit
// запрещаем копи-паст
class CustomUITextField: UITextField {
    public func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
        
        if action == #selector(select(_:)) {
            return false
        }
        if action == #selector(selectAll(_:)) {
            return false
        }
        if action == #selector(cut(_:)) {
            return false
        }
        if action == #selector(copy(_:)) {
            return false
        }
        if action == #selector(paste(_:)) {
            return false
        }
        if action == #selector(delete(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
}
