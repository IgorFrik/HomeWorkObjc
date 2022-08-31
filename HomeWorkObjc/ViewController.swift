//
//  ViewController.swift
//  HomeWorkObjc
//
//  Created by Igor Frik on 31.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private var AssociatedObjectHandle: UInt8 = 0

extension UIView {
    @IBInspectable var identifier: String {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle) as! String
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}
